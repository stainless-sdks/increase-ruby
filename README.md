# Increase Ruby API library

The Increase Ruby library provides convenient access to the Increase REST API from any Ruby 3.0+
application.

## Documentation

Documentation for the most recent version of this gem can be found [on RubyDoc](RubyDocInfoURL).

The underlying REST API documentation can be found [on increase.com](https://increase.com/documentation).

## Installation

To use this gem during the beta, install directly from GitHub with Bundler by
adding the following to your application's `Gemfile`:

```ruby
gem "increase", git: "https://github.com/stainless-sdks/increase-ruby", branch: "main"
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
  environment: "sandbox" # defaults to 'production'
)

account = increase.accounts.create(name: "My First Increase Account")

puts account.id
```

### Resources

Functionality in this library is organized around the resources exposed by the
Increase API. Methods on those resources correspond to endpoints on the API,
e.g.:

```ruby
card = increase.cards.create({
  account_id: "account_in71c4a4ph0vgo2ql3ky",
  description: "Card for Alice"
})
```

Methods that reference an object will take an identifier for that object as
the first argument:

```ruby
card = increase.cards.retrieve("card_ou2s0hwk5rn6kn2e7xg2")
```

When data beyond an identifier is needed for a request, such as with create or
update, pass a Hash with Symbol keys:

```ruby
updated_card = increase.cards.update(
  "card_ou2s0hwk5rn6kn2e7xg2",
  {description: "New description"}
)
```

All methods take request options as their last argument. These can be used to
modify the behaviour of the client for that particular request. This argument
can always be omitted if not needed. See the `Increase::RequestOptions`
docs for details:

```ruby
card = increase.cards.update(
  "card_ou2s0hwk5rn6kn2e7xg2",
  {spend_limit: 10_000},
  {max_retires: 1}
)
```

Detailed documentation for all resources can be found in the `Increase::Resources`
namespace.

### Models

The library provides Ruby classes for all responses returned by the API.
Instances of these classes allow convenient access to parsed response data:

```ruby
card = increase.cards.create({
  account_id: "account_in71c4a4ph0vgo2ql3ky",
  description: "Card for Bob"
})
card.expiration_year
#=> 2028
```

You can also access model attribute data using key lookup syntax:

```ruby
card[:expiration_year]
#=> 2028
```

To get all parsed data as a Hash, use `to_h`:

```ruby
card_data = card.to_h
card_data.keys
#=> [:id, :account_id, :created_at, :description, ...]
```

See the `Increase::Models` docs for details.

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
