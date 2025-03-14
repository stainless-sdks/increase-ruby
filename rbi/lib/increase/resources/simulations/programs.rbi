# typed: strong

module Increase
  module Resources
    class Simulations
      class Programs
        # Simulates a [Program](#programs) being created in your group. By default, your
        #   group has one program called Commercial Banking. Note that when your group
        #   operates more than one program, `program_id` is a required field when creating
        #   accounts.
        sig do
          params(
            name: String,
            request_options: T.nilable(T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything]))
          )
            .returns(Increase::Models::Program)
        end
        def create(name:, request_options: {})
        end

        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
