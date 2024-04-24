# Increase Ruby API library

The Increase Ruby library provides convenient access to the Increase REST API from any Ruby 3.0+
application.

## Documentation

Documentation for the most recent version of this gem can be found [on RubyDoc](https://rubydoc.info/github/increase/increase-ruby).

The underlying REST API documentation can be found [on increase.com](https://increase.com/documentation).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by
adding the following to your application's `Gemfile`:

```ruby
gem "increase", git: "https://github.com/increase/increase-ruby", branch: "main"
```

To fetch an initial copy of the gem:

```sh
bundle install
```

To update the version used by your application when updates are pushed to
GitHub:

```sh
bundle update increase
```

## Usage

```ruby
require "increase"

increase = Increase::Client.new(
  api_key: "My API Key", # defaults to ENV["INCREASE_API_KEY"]
  environment: "sandbox" # defaults to "production"
)

account = increase.accounts.create(name: "My First Increase Account")

puts account.id
```

### Errors

When the library is unable to connect to the API, or if the API returns a
non-success status code (i.e., 4xx or 5xx response), a subclass of
`Increase::HTTP::Error` will be thrown:

```ruby
begin
  account = increase.accounts.create
rescue Increase::HTTP::Error => e
  puts e.code # 400
end
```

Error codes are as followed:

| Status Code | Error Type                 |
| ----------- | -------------------------- |
| 400         | `BadRequestError`          |
| 401         | `AuthenticationError`      |
| 403         | `PermissionDeniedError`    |
| 404         | `NotFoundError`            |
| 409         | `ConflictError`            |
| 422         | `UnprocessableEntityError` |
| 429         | `RateLimitError`           |
| >=500       | `InternalServerError`      |
| (else)      | `APIStatusError`           |
| N/A         | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short
exponential backoff. Connection errors (for example, due to a network
connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit,
and >=500 Internal errors will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
increase = Increase::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
increase.accounts.create(name: "Jack", max_retries: 5)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the
library is in initial development and has a major version of `0`, APIs may change
at any time.

## Requirements

Ruby 3.0 or higher.
