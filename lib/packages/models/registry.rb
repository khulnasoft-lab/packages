# frozen_string_literal: true

module Packages
  module Models
    # @see Packages::Resources::Registries#retrieve
    class Registry < Packages::Internal::Type::BaseModel
      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute default
      #
      #   @return [Boolean]
      required :default, Packages::Internal::Type::Boolean

      # @!attribute downloads
      #
      #   @return [Integer]
      required :downloads, Integer

      # @!attribute ecosystem
      #
      #   @return [String]
      required :ecosystem, String

      # @!attribute github
      #
      #   @return [String, nil]
      required :github, String, nil?: true

      # @!attribute icon_url
      #
      #   @return [String]
      required :icon_url, String

      # @!attribute keywords_count
      #
      #   @return [Integer]
      required :keywords_count, Integer

      # @!attribute maintainers_count
      #
      #   @return [Integer]
      required :maintainers_count, Integer

      # @!attribute maintainers_url
      #
      #   @return [String]
      required :maintainers_url, String

      # @!attribute metadata
      #
      #   @return [Object, nil]
      required :metadata, Packages::Internal::Type::Unknown, nil?: true

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute namespaces_count
      #
      #   @return [Integer]
      required :namespaces_count, Integer

      # @!attribute packages_count
      #
      #   @return [Integer]
      required :packages_count, Integer

      # @!attribute packages_url
      #
      #   @return [String]
      required :packages_url, String

      # @!attribute purl_type
      #
      #   @return [String]
      required :purl_type, String

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!attribute versions_count
      #
      #   @return [Integer, nil]
      optional :versions_count, Integer

      # @!method initialize(created_at:, default:, downloads:, ecosystem:, github:, icon_url:, keywords_count:, maintainers_count:, maintainers_url:, metadata:, name:, namespaces_count:, packages_count:, packages_url:, purl_type:, updated_at:, url:, versions_count: nil)
      #   @param created_at [Time]
      #   @param default [Boolean]
      #   @param downloads [Integer]
      #   @param ecosystem [String]
      #   @param github [String, nil]
      #   @param icon_url [String]
      #   @param keywords_count [Integer]
      #   @param maintainers_count [Integer]
      #   @param maintainers_url [String]
      #   @param metadata [Object, nil]
      #   @param name [String]
      #   @param namespaces_count [Integer]
      #   @param packages_count [Integer]
      #   @param packages_url [String]
      #   @param purl_type [String]
      #   @param updated_at [Time]
      #   @param url [String]
      #   @param versions_count [Integer]
    end
  end
end
