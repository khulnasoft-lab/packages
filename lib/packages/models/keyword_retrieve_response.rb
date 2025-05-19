# frozen_string_literal: true

module Packages
  module Models
    # @see Packages::Resources::Keywords#retrieve
    class KeywordRetrieveResponse < Packages::Internal::Type::BaseModel
      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute packages
      #
      #   @return [Array<Packages::Registries::Package>]
      required :packages, -> { Packages::Internal::Type::ArrayOf[Packages::Registries::Package] }

      # @!attribute packages_count
      #
      #   @return [Integer]
      required :packages_count, Integer

      # @!attribute packages_url
      #
      #   @return [String]
      required :packages_url, String

      # @!attribute related_keywords
      #
      #   @return [Array<Packages::Keyword>]
      required :related_keywords, -> { Packages::Internal::Type::ArrayOf[Packages::Keyword] }

      # @!method initialize(name:, packages:, packages_count:, packages_url:, related_keywords:)
      #   @param name [String]
      #   @param packages [Array<Packages::Registries::Package>]
      #   @param packages_count [Integer]
      #   @param packages_url [String]
      #   @param related_keywords [Array<Packages::Keyword>]
    end
  end
end
