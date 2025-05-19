# frozen_string_literal: true

module Packages
  module Models
    module Registries
      module Packages
        # @see Packages::Resources::Registries::Packages::Versions#retrieve
        class VersionRetrieveResponse < Packages::Internal::Type::BaseModel
          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute dependencies
          #
          #   @return [Array<Packages::Dependency>]
          required :dependencies, -> { Packages::Internal::Type::ArrayOf[Packages::Dependency] }

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

          # @!attribute related_tag
          #
          #   @return [Object]
          required :related_tag, Packages::Internal::Type::Unknown

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

          # @!attribute id
          #
          #   @return [Integer, nil]
          optional :id, Integer

          # @!method initialize(created_at:, dependencies:, documentation_url:, download_url:, install_command:, integrity:, latest:, licenses:, metadata:, number:, published_at:, purl:, registry_url:, related_tag:, status:, updated_at:, version_url:, id: nil)
          #   @param created_at [Time]
          #   @param dependencies [Array<Packages::Dependency>]
          #   @param documentation_url [String, nil]
          #   @param download_url [String, nil]
          #   @param install_command [String, nil]
          #   @param integrity [String, nil]
          #   @param latest [Boolean]
          #   @param licenses [String, nil]
          #   @param metadata [Object, nil]
          #   @param number [String]
          #   @param published_at [String, nil]
          #   @param purl [String]
          #   @param registry_url [String, nil]
          #   @param related_tag [Object]
          #   @param status [String, nil]
          #   @param updated_at [Time]
          #   @param version_url [String]
          #   @param id [Integer]
        end
      end
    end
  end
end
