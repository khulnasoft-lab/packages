# frozen_string_literal: true

module Packages
  module Models
    # @see Packages::Resources::Dependencies#list
    class DependencyListParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      # @!attribute after
      #   filter by id after given id
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute ecosystem
      #   ecosystem name
      #
      #   @return [String, nil]
      optional :ecosystem, String

      # @!attribute kind
      #   kind
      #
      #   @return [String, nil]
      optional :kind, String

      # @!attribute optional
      #   optional
      #
      #   @return [Boolean, nil]
      optional :optional, Packages::Internal::Type::Boolean

      # @!attribute package_id
      #   package id
      #
      #   @return [String, nil]
      optional :package_id, String

      # @!attribute package_name
      #   package name
      #
      #   @return [String, nil]
      optional :package_name, String

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

      # @!attribute requirements
      #   requirements
      #
      #   @return [String, nil]
      optional :requirements, String

      # @!method initialize(after: nil, ecosystem: nil, kind: nil, optional: nil, package_id: nil, package_name: nil, page: nil, per_page: nil, requirements: nil, request_options: {})
      #   @param after [String] filter by id after given id
      #
      #   @param ecosystem [String] ecosystem name
      #
      #   @param kind [String] kind
      #
      #   @param optional [Boolean] optional
      #
      #   @param package_id [String] package id
      #
      #   @param package_name [String] package name
      #
      #   @param page [Integer] pagination page number
      #
      #   @param per_page [Integer] Number of records to return
      #
      #   @param requirements [String] requirements
      #
      #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
