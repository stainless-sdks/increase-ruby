# Increase Ruby API library

The Increase Ruby library provides convenient access to the Increase REST API from any Ruby 3.0+
application.

## Documentation

Documentation for the most recent version of this gem can be found [on RubyDoc](https://rubydoc.info/github/Increase/increase-ruby).

The underlying REST API documentation can be found on [increase.com](https://increase.com/documentation).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by
adding the following to your application's `Gemfile`:

```ruby
gem "increase", git: "https://github.com/Increase/increase-ruby", branch: "main"
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

account = increase.accounts.create(
  name: "New Account!",
  entity_id: "entity_n8y8tnk2p9339ti393yi",
  program_id: "program_i2v2os4mwza1oetokh9i"
)

puts(account.id)
```

### Errors

When the library is unable to connect to the API, or if the API returns a
non-success status code (i.e., 4xx or 5xx response), a subclass of
`Increase::HTTP::Error` will be thrown:

```ruby
begin
  account = increase.accounts.create
rescue Increase::HTTP::Error => e
  puts(e.code) # 400
end
```

Error codes are as followed:

| Cause            | Error Type                 |
| ---------------- | -------------------------- |
| HTTP 400         | `BadRequestError`          |
| HTTP 401         | `AuthenticationError`      |
| HTTP 403         | `PermissionDeniedError`    |
| HTTP 404         | `NotFoundError`            |
| HTTP 409         | `ConflictError`            |
| HTTP 422         | `UnprocessableEntityError` |
| HTTP 429         | `RateLimitError`           |
| HTTP >=500       | `InternalServerError`      |
| Other HTTP error | `APIStatusError`           |
| Timeout          | `APITimeoutError`          |
| Network error    | `APIConnectionError`       |

### Retries

Certain errors will be automatically retried 2 times by default, with a short
exponential backoff. Connection errors (for example, due to a network
connectivity problem), 408 Request Timeout, 409 Conflict, 429 Rate Limit, >=500 Internal errors,
and timeouts will all be retried by default.

You can use the `max_retries` option to configure or disable this:

```ruby
# Configure the default for all requests:
increase = Increase::Client.new(
  max_retries: 0 # default is 2
)

# Or, configure per-request:
increase.accounts.create(
  name: "New Account!",
  entity_id: "entity_n8y8tnk2p9339ti393yi",
  program_id: "program_i2v2os4mwza1oetokh9i",
  max_retries: 5
)
```

### Timeouts

By default, requests will time out after 60 seconds.
Timeouts are applied separately to the initial connection and the overall request time,
so in some cases a request could wait 2\*timeout seconds before it fails.

You can use the `timeout` option to configure or disable this:

```ruby
# Configure the default for all requests:
increase = Increase::Client.new(
  timeout: nil # default is 60
)

# Or, configure per-request:
increase.accounts.create(
  name: "New Account!",
  entity_id: "entity_n8y8tnk2p9339ti393yi",
  program_id: "program_i2v2os4mwza1oetokh9i",
  timeout: 5
)
```

## Versioning

This package follows [SemVer](https://semver.org/spec/v2.0.0.html) conventions. As the
library is in initial development and has a major version of `0`, APIs may change
at any time.

## Requirements

Ruby 3.0 or higher.
