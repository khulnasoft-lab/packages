# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Packages#list_dependent_package_kinds
      class PackageListDependentPackageKindsParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        # @!attribute registry_name
        #
        #   @return [String]
        required :registry_name, String

        # @!attribute latest
        #   filter by latest version
        #
        #   @return [Boolean, nil]
        optional :latest, Packages::Internal::Type::Boolean

        # @!method initialize(registry_name:, latest: nil, request_options: {})
        #   @param registry_name [String]
        #
        #   @param latest [Boolean] filter by latest version
        #
        #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
