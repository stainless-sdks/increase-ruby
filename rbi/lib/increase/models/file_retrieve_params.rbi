# typed: strong

module Increase
  module Models
    class FileRetrieveParams < Increase::BaseModel
      extend Increase::RequestParameters::Converter
      include Increase::RequestParameters

      sig { params(request_options: T.any(Increase::RequestOptions, T::Hash[Symbol, T.anything])).void }
      def initialize(request_options: {})
      end

      sig { override.returns({request_options: Increase::RequestOptions}) }
      def to_hash
      end
    end
  end
end
