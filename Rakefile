# frozen_string_literal: true

require "pathname"
require "securerandom"
require "shellwords"

require "minitest/test_task"
require "rake/clean"
require "rubocop/rake_task"

CLEAN.push(*%w[.idea/ .ruby-lsp/ .yardoc/])

task(default: [:test])

Minitest::TestTask.create do |t|
  t.libs = %w[.]
  t.test_globs = ENV.fetch("TEST", "./test/**/*_test.rb")
end

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = %w[--fail-level E]
  if ENV.key?("CI")
    t.options += %w[--format github]
  end
end

xargs = %w[xargs --no-run-if-empty --null --max-procs=0 --max-args=300 --]
multitask(:ruboformat) do
  find = %w[find ./lib ./test ./rbi -type f -and ( -name *.rb -or -name *.rbi ) -print0]
  fmt = xargs + %w[rubocop --fail-level F --autocorrect --format simple --]
  sh("#{find.shelljoin} | #{fmt.shelljoin}")
end

multitask(:syntax_tree) do
  find = %w[find ./sig -type f -name *.rbs -print0]
  inplace = /darwin|bsd/ =~ RUBY_PLATFORM ? %w[-i''] : %w[-i]
  uuid = SecureRandom.uuid

  # `syntax_tree` has trouble with `rbs`'s class aliases

  sed = xargs + %w[sed -E] + inplace + %w[-e]
  # annotate class aliases with a unique comment
  pre = sed + ["s/class ([^ ]+) = (.+$)/# #{uuid}\\n\\1: \\2/", "--"]
  fmt = xargs + %w[stree write --plugin=rbs --]
  # remove the unique comment and transform class aliases to type aliases
  subst = <<~SED
    s/# #{uuid}//
    t l1
    b
    : l1
    n
    s/([^ :]+): (.+$)/class \\1 = \\2/
  SED
  # 1. delete the unique comment
  # 2. if deletion happened, branch to label `l1`, else continue
  # 3. transform the class alias to a type alias at label `l1`
  pst = sed + [subst, "--"]

  # transform class aliases to type aliases, which syntax tree has no trouble with
  sh("#{find.shelljoin} | #{pre.shelljoin}")
  # run syntax tree to format `*.rbs` files
  sh("#{find.shelljoin} | #{fmt.shelljoin}")
  # transform type aliases back to class aliases
  sh("#{find.shelljoin} | #{pst.shelljoin}")
end

multitask(format: [:ruboformat, :syntax_tree])

multitask(:steep) do
  sh(*%w[steep check])
end

srb_tc = *%w[srb typecheck]
multitask(:sorbet) do
  sh(srb_tc)
end

file("sorbet/tapioca") do
  sh(*%w[tapioca init])
end

multitask(:tapioca) do
  gem = "increase"
  tapioca = Pathname("tmp/tapioca")
  tapioca.rmtree
  tapioca.mkpath

  tapioca.join("Gemfile").write(<<~RUBY)
    source("https://rubygems.org")
    gem("#{gem}", path: "../..")
  RUBY

  sh(*%w[bundle], chdir: tapioca)
  sh(*%w[tapioca gem], gem, chdir: tapioca)
  sh(srb_tc, chdir: tapioca)
end

multitask(typecheck: [:steep, :sorbet])
multitask(lint: [:rubocop, :typecheck])

multitask(:build) do
  sh(*%w[gem build -- increase.gemspec])
end

multitask(release: [:tapioca, :lint, :build]) do
  sh(*%w[gem push], *FileList["increase-*.gem"])
end
