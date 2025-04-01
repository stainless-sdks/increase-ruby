# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Programs
        # Simulates a [Program](#programs) being created in your group. By default, your
        #   group has one program called Commercial Banking. Note that when your group
        #   operates more than one program, `program_id` is a required field when creating
        #   accounts.
        #
        # @param params [Increase::Models::Simulations::ProgramCreateParams, Hash{Symbol=>Object}] .
        #
        #   @option params [String] :name The name of the program being added.
        #
        #   @option params [Increase::RequestOptions, Hash{Symbol=>Object}, nil] :request_options
        #
        # @return [Increase::Models::Program]
        #
        # @see Increase::Models::Simulations::ProgramCreateParams
        def create(params)
          parsed, options = Increase::Models::Simulations::ProgramCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "simulations/programs",
            body: parsed,
            model: Increase::Models::Program,
            options: options
          )
        end

        # @api private
        #
        # @param client [Increase::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
