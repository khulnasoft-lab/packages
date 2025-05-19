# frozen_string_literal: true

module Packages
  module Models
    # @see Packages::Resources::Registries#list
    class RegistryListParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

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

      # @!method initialize(page: nil, per_page: nil, request_options: {})
      #   @param page [Integer] pagination page number
      #
      #   @param per_page [Integer] Number of records to return
      #
      #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
