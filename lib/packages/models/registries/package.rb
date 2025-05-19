# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Packages#retrieve
      class Package < Packages::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute advisories
        #
        #   @return [Array<Packages::Registries::Package::Advisory>]
        required :advisories,
                 -> {
                   Packages::Internal::Type::ArrayOf[Packages::Registries::Package::Advisory]
                 }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute critical
        #
        #   @return [Boolean]
        required :critical, Packages::Internal::Type::Boolean

        # @!attribute dependent_packages_count
        #
        #   @return [Integer]
        required :dependent_packages_count, Integer

        # @!attribute dependent_packages_url
        #
        #   @return [String]
        required :dependent_packages_url, String

        # @!attribute dependent_repos_count
        #
        #   @return [Integer]
        required :dependent_repos_count, Integer

        # @!attribute dependent_repositories_url
        #
        #   @return [String]
        required :dependent_repositories_url, String

        # @!attribute description
        #
        #   @return [String, nil]
        required :description, String, nil?: true

        # @!attribute docker_dependents_count
        #
        #   @return [Integer]
        required :docker_dependents_count, Integer

        # @!attribute docker_downloads_count
        #
        #   @return [Integer]
        required :docker_downloads_count, Integer

        # @!attribute docker_usage_url
        #
        #   @return [String]
        required :docker_usage_url, String

        # @!attribute documentation_url
        #
        #   @return [String, nil]
        required :documentation_url, String, nil?: true

        # @!attribute downloads
        #
        #   @return [Integer]
        required :downloads, Integer

        # @!attribute downloads_period
        #
        #   @return [String, nil]
        required :downloads_period, String, nil?: true

        # @!attribute ecosystem
        #
        #   @return [String]
        required :ecosystem, String

        # @!attribute first_release_published_at
        #
        #   @return [Time, nil]
        required :first_release_published_at, Time, nil?: true

        # @!attribute funding_links
        #
        #   @return [Array<String>]
        required :funding_links, Packages::Internal::Type::ArrayOf[String]

        # @!attribute homepage
        #
        #   @return [String, nil]
        required :homepage, String, nil?: true

        # @!attribute install_command
        #
        #   @return [String, nil]
        required :install_command, String, nil?: true

        # @!attribute keywords_array
        #
        #   @return [Array<String>]
        required :keywords_array, Packages::Internal::Type::ArrayOf[String]

        # @!attribute last_synced_at
        #
        #   @return [Time, nil]
        required :last_synced_at, Time, nil?: true

        # @!attribute latest_release_number
        #
        #   @return [String, nil]
        required :latest_release_number, String, nil?: true

        # @!attribute latest_release_published_at
        #
        #   @return [Time, nil]
        required :latest_release_published_at, Time, nil?: true

        # @!attribute licenses
        #
        #   @return [String, nil]
        required :licenses, String, nil?: true

        # @!attribute maintainers
        #
        #   @return [Array<Packages::Registries::Maintainer>]
        required :maintainers, -> { Packages::Internal::Type::ArrayOf[Packages::Registries::Maintainer] }

        # @!attribute metadata
        #
        #   @return [Object, nil]
        required :metadata, Packages::Internal::Type::Unknown, nil?: true

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute namespace
        #
        #   @return [String, nil]
        required :namespace, String, nil?: true

        # @!attribute normalized_licenses
        #
        #   @return [Array<String>]
        required :normalized_licenses, Packages::Internal::Type::ArrayOf[String]

        # @!attribute purl
        #
        #   @return [String]
        required :purl, String

        # @!attribute rankings
        #
        #   @return [Object]
        required :rankings, Packages::Internal::Type::Unknown

        # @!attribute registry_url
        #
        #   @return [String, nil]
        required :registry_url, String, nil?: true

        # @!attribute related_packages_url
        #
        #   @return [String]
        required :related_packages_url, String

        # @!attribute repo_metadata
        #
        #   @return [Object, nil]
        required :repo_metadata, Packages::Internal::Type::Unknown, nil?: true

        # @!attribute repo_metadata_updated_at
        #
        #   @return [Time, nil]
        required :repo_metadata_updated_at, Time, nil?: true

        # @!attribute repository_url
        #
        #   @return [String, nil]
        required :repository_url, String, nil?: true

        # @!attribute status
        #
        #   @return [String, nil]
        required :status, String, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute usage_url
        #
        #   @return [String]
        required :usage_url, String

        # @!attribute versions_count
        #
        #   @return [Integer]
        required :versions_count, Integer

        # @!attribute versions_url
        #
        #   @return [String]
        required :versions_url, String

        # @!attribute version_numbers_url
        #
        #   @return [String, nil]
        optional :version_numbers_url, String

        # @!method initialize(id:, advisories:, created_at:, critical:, dependent_packages_count:, dependent_packages_url:, dependent_repos_count:, dependent_repositories_url:, description:, docker_dependents_count:, docker_downloads_count:, docker_usage_url:, documentation_url:, downloads:, downloads_period:, ecosystem:, first_release_published_at:, funding_links:, homepage:, install_command:, keywords_array:, last_synced_at:, latest_release_number:, latest_release_published_at:, licenses:, maintainers:, metadata:, name:, namespace:, normalized_licenses:, purl:, rankings:, registry_url:, related_packages_url:, repo_metadata:, repo_metadata_updated_at:, repository_url:, status:, updated_at:, usage_url:, versions_count:, versions_url:, version_numbers_url: nil)
        #   @param id [Integer]
        #   @param advisories [Array<Packages::Registries::Package::Advisory>]
        #   @param created_at [Time]
        #   @param critical [Boolean]
        #   @param dependent_packages_count [Integer]
        #   @param dependent_packages_url [String]
        #   @param dependent_repos_count [Integer]
        #   @param dependent_repositories_url [String]
        #   @param description [String, nil]
        #   @param docker_dependents_count [Integer]
        #   @param docker_downloads_count [Integer]
        #   @param docker_usage_url [String]
        #   @param documentation_url [String, nil]
        #   @param downloads [Integer]
        #   @param downloads_period [String, nil]
        #   @param ecosystem [String]
        #   @param first_release_published_at [Time, nil]
        #   @param funding_links [Array<String>]
        #   @param homepage [String, nil]
        #   @param install_command [String, nil]
        #   @param keywords_array [Array<String>]
        #   @param last_synced_at [Time, nil]
        #   @param latest_release_number [String, nil]
        #   @param latest_release_published_at [Time, nil]
        #   @param licenses [String, nil]
        #   @param maintainers [Array<Packages::Registries::Maintainer>]
        #   @param metadata [Object, nil]
        #   @param name [String]
        #   @param namespace [String, nil]
        #   @param normalized_licenses [Array<String>]
        #   @param purl [String]
        #   @param rankings [Object]
        #   @param registry_url [String, nil]
        #   @param related_packages_url [String]
        #   @param repo_metadata [Object, nil]
        #   @param repo_metadata_updated_at [Time, nil]
        #   @param repository_url [String, nil]
        #   @param status [String, nil]
        #   @param updated_at [Time]
        #   @param usage_url [String]
        #   @param versions_count [Integer]
        #   @param versions_url [String]
        #   @param version_numbers_url [String]

        class Advisory < Packages::Internal::Type::BaseModel
          # @!attribute classification
          #
          #   @return [String, nil]
          required :classification, String, nil?: true

          # @!attribute created_at
          #
          #   @return [String]
          required :created_at, String

          # @!attribute cvss_score
          #
          #   @return [Float, nil]
          required :cvss_score, Float, nil?: true

          # @!attribute cvss_vector
          #
          #   @return [String, nil]
          required :cvss_vector, String, nil?: true

          # @!attribute description
          #
          #   @return [String, nil]
          required :description, String, nil?: true

          # @!attribute identifiers
          #
          #   @return [Array<String, nil>]
          required :identifiers, Packages::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute origin
          #
          #   @return [String, nil]
          required :origin, String, nil?: true

          # @!attribute packages
          #
          #   @return [Array<Object>]
          required :packages, Packages::Internal::Type::ArrayOf[Packages::Internal::Type::Unknown]

          # @!attribute published_at
          #
          #   @return [String, nil]
          required :published_at, String, nil?: true

          # @!attribute references
          #
          #   @return [Array<String, nil>]
          required :references, Packages::Internal::Type::ArrayOf[String, nil?: true]

          # @!attribute severity
          #
          #   @return [String, nil]
          required :severity, String, nil?: true

          # @!attribute source_kind
          #
          #   @return [String, nil]
          required :source_kind, String, nil?: true

          # @!attribute title
          #
          #   @return [String, nil]
          required :title, String, nil?: true

          # @!attribute updated_at
          #
          #   @return [String]
          required :updated_at, String

          # @!attribute url
          #
          #   @return [String, nil]
          required :url, String, nil?: true

          # @!attribute uuid
          #
          #   @return [String]
          required :uuid, String

          # @!attribute withdrawn_at
          #
          #   @return [String, nil]
          required :withdrawn_at, String, nil?: true

          # @!method initialize(classification:, created_at:, cvss_score:, cvss_vector:, description:, identifiers:, origin:, packages:, published_at:, references:, severity:, source_kind:, title:, updated_at:, url:, uuid:, withdrawn_at:)
          #   @param classification [String, nil]
          #   @param created_at [String]
          #   @param cvss_score [Float, nil]
          #   @param cvss_vector [String, nil]
          #   @param description [String, nil]
          #   @param identifiers [Array<String, nil>]
          #   @param origin [String, nil]
          #   @param packages [Array<Object>]
          #   @param published_at [String, nil]
          #   @param references [Array<String, nil>]
          #   @param severity [String, nil]
          #   @param source_kind [String, nil]
          #   @param title [String, nil]
          #   @param updated_at [String]
          #   @param url [String, nil]
          #   @param uuid [String]
          #   @param withdrawn_at [String, nil]
        end
      end
    end
  end
end
