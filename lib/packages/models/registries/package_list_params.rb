# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Packages#list
      class PackageListParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        # @!attribute created_after
        #   filter by created_at after given time
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_before
        #   filter by created_at before given time
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute critical
        #   filter by critical packages
        #
        #   @return [Boolean, nil]
        optional :critical, Packages::Internal::Type::Boolean

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

        # @!attribute updated_before
        #   filter by updated_at before given time
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!method initialize(created_after: nil, created_before: nil, critical: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, updated_before: nil, request_options: {})
        #   @param created_after [Time] filter by created_at after given time
        #
        #   @param created_before [Time] filter by created_at before given time
        #
        #   @param critical [Boolean] filter by critical packages
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
        #   @param updated_before [Time] filter by updated_at before given time
        #
        #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
