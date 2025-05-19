# frozen_string_literal: true

module Packages
  module Models
    module Registries
      module Packages
        # @see Packages::Resources::Registries::Packages::Versions#retrieve
        class VersionRetrieveParams < Packages::Internal::Type::BaseModel
          extend Packages::Internal::Type::RequestParameters::Converter
          include Packages::Internal::Type::RequestParameters

          # @!attribute registry_name
          #
          #   @return [String]
          required :registry_name, String

          # @!attribute package_name
          #
          #   @return [String]
          required :package_name, String

          # @!method initialize(registry_name:, package_name:, request_options: {})
          #   @param registry_name [String]
          #   @param package_name [String]
          #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
