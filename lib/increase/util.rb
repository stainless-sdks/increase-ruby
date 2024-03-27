# frozen_string_literal: true

module Increase
  # Use this to indicate that a value should be explicitly removed from a data structure.
  # E.g. merging `{a: 1}` and `{a: Omit}` should produce `{}`, where merging `{a: 1}` and
  # `{}` would produce `{a: 1}`.
  class Omit # rubocop:disable Lint/EmptyClass
  end

  class Util
    # Recursively merge one hash with another.
    # If the values at a given key are not both hashes, just take the new value.
    # @param concat [true, false] whether to merge sequences by concatenation
    def self.deep_merge(left, right, concat: false)
      right_cleaned = if right.is_a? Hash
        right.reject {|_key, value| value == Omit}
      else
        right
      end

      if left.is_a?(Hash) && right_cleaned.is_a?(Hash)
        left.reject { |key| right[key] == Omit }
          .merge(right_cleaned) do |_k, old_val, new_val|
            deep_merge(
              old_val,
              new_val,
              concat: concat
            )
        end
      elsif left.is_a?(Array) && right_cleaned.is_a?(Array) && concat
        left.concat(right_cleaned)
      else
        right_cleaned
      end
    end
  end
end
