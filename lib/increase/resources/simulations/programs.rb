# frozen_string_literal: true

module Increase
  module Resources
    class Simulations
      class Programs
        def initialize(client:)
          @client = client
        end

        # Simulates a program being created in your group. By default, your group has one
        #   program called Commercial Banking. Note that when your group operates more than
        #   one program, `program_id` is a required field when creating accounts.
        # 
        # @param params [Hash] Attributes to send in this request.
        # @option params [String] :name The name of the program being added.
        # 
        # @param opts [Hash|RequestOptions] Options to specify HTTP behaviour for this request.
        # 
        # @return [Increase::Models::Program]
        def create(params = {}, opts = {})
          req = {}
          req[:method] = :post
          req[:path] = "/simulations/programs"
          req[:body] = params
          req[:model] = Increase::Models::Program
          @client.request(req, opts)
        end
      end
    end
  end
end
