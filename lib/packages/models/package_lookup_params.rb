# frozen_string_literal: true

module Packages
  module Models
    # @see Packages::Resources::Packages#lookup
    class PackageLookupParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      # @!attribute ecosystem
      #   ecosystem name
      #
      #   @return [String, nil]
      optional :ecosystem, String

      # @!attribute name
      #   package name
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute order
      #   direction to sort results by
      #
      #   @return [String, nil]
      optional :order, String

      # @!attribute purl
      #   package URL
      #
      #   @return [String, nil]
      optional :purl, String

      # @!attribute repository_url
      #   repository URL
      #
      #   @return [String, nil]
      optional :repository_url, String

      # @!attribute sort
      #   field to sort results by
      #
      #   @return [String, nil]
      optional :sort, String

      # @!method initialize(ecosystem: nil, name: nil, order: nil, purl: nil, repository_url: nil, sort: nil, request_options: {})
      #   @param ecosystem [String] ecosystem name
      #
      #   @param name [String] package name
      #
      #   @param order [String] direction to sort results by
      #
      #   @param purl [String] package URL
      #
      #   @param repository_url [String] repository URL
      #
      #   @param sort [String] field to sort results by
      #
      #   @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
