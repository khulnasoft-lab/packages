# frozen_string_literal: true

module Packages
  module Models
    class RegistryListRecentVersionsResponseItem < Packages::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute created_at
      #
      #   @return [Time]
      required :created_at, Time

      # @!attribute documentation_url
      #
      #   @return [String, nil]
      required :documentation_url, String, nil?: true

      # @!attribute download_url
      #
      #   @return [String, nil]
      required :download_url, String, nil?: true

      # @!attribute install_command
      #
      #   @return [String, nil]
      required :install_command, String, nil?: true

      # @!attribute integrity
      #
      #   @return [String, nil]
      required :integrity, String, nil?: true

      # @!attribute latest
      #
      #   @return [Boolean]
      required :latest, Packages::Internal::Type::Boolean

      # @!attribute licenses
      #
      #   @return [String, nil]
      required :licenses, String, nil?: true

      # @!attribute metadata
      #
      #   @return [Object, nil]
      required :metadata, Packages::Internal::Type::Unknown, nil?: true

      # @!attribute number
      #
      #   @return [String]
      required :number, String

      # @!attribute package_url
      #
      #   @return [String]
      required :package_url, String

      # @!attribute published_at
      #
      #   @return [String, nil]
      required :published_at, String, nil?: true

      # @!attribute purl
      #
      #   @return [String]
      required :purl, String

      # @!attribute registry_url
      #
      #   @return [String, nil]
      required :registry_url, String, nil?: true

      # @!attribute status
      #
      #   @return [String, nil]
      required :status, String, nil?: true

      # @!attribute updated_at
      #
      #   @return [Time]
      required :updated_at, Time

      # @!attribute version_url
      #
      #   @return [String]
      required :version_url, String

      # @!method initialize(id:, created_at:, documentation_url:, download_url:, install_command:, integrity:, latest:, licenses:, metadata:, number:, package_url:, published_at:, purl:, registry_url:, status:, updated_at:, version_url:)
      #   @param id [Integer]
      #   @param created_at [Time]
      #   @param documentation_url [String, nil]
      #   @param download_url [String, nil]
      #   @param install_command [String, nil]
      #   @param integrity [String, nil]
      #   @param latest [Boolean]
      #   @param licenses [String, nil]
      #   @param metadata [Object, nil]
      #   @param number [String]
      #   @param package_url [String]
      #   @param published_at [String, nil]
      #   @param purl [String]
      #   @param registry_url [String, nil]
      #   @param status [String, nil]
      #   @param updated_at [Time]
      #   @param version_url [String]
    end

    # @type [Packages::Internal::Type::Converter]
    RegistryListRecentVersionsResponse =
      Packages::Internal::Type::ArrayOf[-> { Packages::Models::RegistryListRecentVersionsResponseItem }]
  end
end
