# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Maintainers#retrieve
      class MaintainerRetrieveParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        # @!attribute registry_name
        #
        #   @return [String]
        required :registry_name, String

        # @!method initialize(registry_name:, request_options: {})
        #   @param registry_name [String]
        #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
