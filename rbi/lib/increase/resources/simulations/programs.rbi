# typed: strong

module Increase
  module Resources
    class Simulations
      class Programs
        sig do
          params(
            name: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          ).returns(Increase::Models::Program)
        end
        def create(name:, request_options: {})
        end

        sig { params(client: Increase::Client).void }
        def initialize(client:)
        end
      end
    end
  end
end
