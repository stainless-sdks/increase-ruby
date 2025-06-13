# typed: strong

module Increase
  module Resources
    class Simulations
      class Programs
        # Simulates a [Program](#programs) being created in your group. By default, your
        # group has one program called Commercial Banking. Note that when your group
        # operates more than one program, `program_id` is a required field when creating
        # accounts.
        sig do
          params(name: String, reserve_account_id: String, request_options: Increase::RequestOptions::OrHash)
            .returns(Increase::Program)
        end
        def create(
          # The name of the program being added.
        name:,
          # The identifier of the Account the Program should be added to is for.
        reserve_account_id: nil,
          request_options: {}
        ); end

        # @api private
        sig { params(client: Increase::Client).returns(T.attached_class) }
        def self.new(client:); end
      end
    end
  end
end
