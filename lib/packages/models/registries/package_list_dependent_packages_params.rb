# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Packages#list_dependent_packages
      class PackageListDependentPackagesParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        # @!attribute registry_name
        #
        #   @return [String]
        required :registry_name, String

        # @!attribute created_after
        #   filter by created_at after given time
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute kind
        #   filter by dependency kind
        #
        #   @return [String, nil]
        optional :kind, String

        # @!attribute latest
        #   filter by latest version
        #
        #   @return [Boolean, nil]
        optional :latest, Packages::Internal::Type::Boolean

        # @!attribute order
        #   direction to order results by
        #
        #   @return [String, nil]
        optional :order, String

        # @!attribute page
        #   pagination page number
        #
        #   @return [Integer, nil]
        optional :page, Integer

        # @!attribute per_page
        #   Number of records to return
        #
        #   @return [Integer, nil]
        optional :per_page, Integer

        # @!attribute sort
        #   field to order results by
        #
        #   @return [String, nil]
        optional :sort, String

        # @!attribute updated_after
        #   filter by updated_at after given time
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!method initialize(registry_name:, created_after: nil, kind: nil, latest: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, request_options: {})
        #   @param registry_name [String]
        #
        #   @param created_after [Time] filter by created_at after given time
        #
        #   @param kind [String] filter by dependency kind
        #
        #   @param latest [Boolean] filter by latest version
        #
        #   @param order [String] direction to order results by
        #
        #   @param page [Integer] pagination page number
        #
        #   @param per_page [Integer] Number of records to return
        #
        #   @param sort [String] field to order results by
        #
        #   @param updated_after [Time] filter by updated_at after given time
        #
        #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
