# typed: strong

module Packages
  module Models
    module Registries
      class Package < Packages::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Packages::Registries::Package, Packages::Internal::AnyHash)
          end

        sig { returns(Integer) }
        attr_accessor :id

        sig { returns(T::Array[Packages::Registries::Package::Advisory]) }
        attr_accessor :advisories

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T::Boolean) }
        attr_accessor :critical

        sig { returns(Integer) }
        attr_accessor :dependent_packages_count

        sig { returns(String) }
        attr_accessor :dependent_packages_url

        sig { returns(Integer) }
        attr_accessor :dependent_repos_count

        sig { returns(String) }
        attr_accessor :dependent_repositories_url

        sig { returns(T.nilable(String)) }
        attr_accessor :description

        sig { returns(Integer) }
        attr_accessor :docker_dependents_count

        sig { returns(Integer) }
        attr_accessor :docker_downloads_count

        sig { returns(String) }
        attr_accessor :docker_usage_url

        sig { returns(T.nilable(String)) }
        attr_accessor :documentation_url

        sig { returns(Integer) }
        attr_accessor :downloads

        sig { returns(T.nilable(String)) }
        attr_accessor :downloads_period

        sig { returns(String) }
        attr_accessor :ecosystem

        sig { returns(T.nilable(Time)) }
        attr_accessor :first_release_published_at

        sig { returns(T::Array[String]) }
        attr_accessor :funding_links

        sig { returns(T.nilable(String)) }
        attr_accessor :homepage

        sig { returns(T.nilable(String)) }
        attr_accessor :install_command

        sig { returns(T::Array[String]) }
        attr_accessor :keywords_array

        sig { returns(T.nilable(Time)) }
        attr_accessor :last_synced_at

        sig { returns(T.nilable(String)) }
        attr_accessor :latest_release_number

        sig { returns(T.nilable(Time)) }
        attr_accessor :latest_release_published_at

        sig { returns(T.nilable(String)) }
        attr_accessor :licenses

        sig { returns(T::Array[Packages::Registries::Maintainer]) }
        attr_accessor :maintainers

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :metadata

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_accessor :namespace

        sig { returns(T::Array[String]) }
        attr_accessor :normalized_licenses

        sig { returns(String) }
        attr_accessor :purl

        sig { returns(T.anything) }
        attr_accessor :rankings

        sig { returns(T.nilable(String)) }
        attr_accessor :registry_url

        sig { returns(String) }
        attr_accessor :related_packages_url

        sig { returns(T.nilable(T.anything)) }
        attr_accessor :repo_metadata

        sig { returns(T.nilable(Time)) }
        attr_accessor :repo_metadata_updated_at

        sig { returns(T.nilable(String)) }
        attr_accessor :repository_url

        sig { returns(T.nilable(String)) }
        attr_accessor :status

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(String) }
        attr_accessor :usage_url

        sig { returns(Integer) }
        attr_accessor :versions_count

        sig { returns(String) }
        attr_accessor :versions_url

        sig { returns(T.nilable(String)) }
        attr_reader :version_numbers_url

        sig { params(version_numbers_url: String).void }
        attr_writer :version_numbers_url

        sig do
          params(
            id: Integer,
            advisories:
              T::Array[Packages::Registries::Package::Advisory::OrHash],
            created_at: Time,
            critical: T::Boolean,
            dependent_packages_count: Integer,
            dependent_packages_url: String,
            dependent_repos_count: Integer,
            dependent_repositories_url: String,
            description: T.nilable(String),
            docker_dependents_count: Integer,
            docker_downloads_count: Integer,
            docker_usage_url: String,
            documentation_url: T.nilable(String),
            downloads: Integer,
            downloads_period: T.nilable(String),
            ecosystem: String,
            first_release_published_at: T.nilable(Time),
            funding_links: T::Array[String],
            homepage: T.nilable(String),
            install_command: T.nilable(String),
            keywords_array: T::Array[String],
            last_synced_at: T.nilable(Time),
            latest_release_number: T.nilable(String),
            latest_release_published_at: T.nilable(Time),
            licenses: T.nilable(String),
            maintainers: T::Array[Packages::Registries::Maintainer::OrHash],
            metadata: T.nilable(T.anything),
            name: String,
            namespace: T.nilable(String),
            normalized_licenses: T::Array[String],
            purl: String,
            rankings: T.anything,
            registry_url: T.nilable(String),
            related_packages_url: String,
            repo_metadata: T.nilable(T.anything),
            repo_metadata_updated_at: T.nilable(Time),
            repository_url: T.nilable(String),
            status: T.nilable(String),
            updated_at: Time,
            usage_url: String,
            versions_count: Integer,
            versions_url: String,
            version_numbers_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          advisories:,
          created_at:,
          critical:,
          dependent_packages_count:,
          dependent_packages_url:,
          dependent_repos_count:,
          dependent_repositories_url:,
          description:,
          docker_dependents_count:,
          docker_downloads_count:,
          docker_usage_url:,
          documentation_url:,
          downloads:,
          downloads_period:,
          ecosystem:,
          first_release_published_at:,
          funding_links:,
          homepage:,
          install_command:,
          keywords_array:,
          last_synced_at:,
          latest_release_number:,
          latest_release_published_at:,
          licenses:,
          maintainers:,
          metadata:,
          name:,
          namespace:,
          normalized_licenses:,
          purl:,
          rankings:,
          registry_url:,
          related_packages_url:,
          repo_metadata:,
          repo_metadata_updated_at:,
          repository_url:,
          status:,
          updated_at:,
          usage_url:,
          versions_count:,
          versions_url:,
          version_numbers_url: nil
        )
        end

        sig do
          override.returns(
            {
              id: Integer,
              advisories: T::Array[Packages::Registries::Package::Advisory],
              created_at: Time,
              critical: T::Boolean,
              dependent_packages_count: Integer,
              dependent_packages_url: String,
              dependent_repos_count: Integer,
              dependent_repositories_url: String,
              description: T.nilable(String),
              docker_dependents_count: Integer,
              docker_downloads_count: Integer,
              docker_usage_url: String,
              documentation_url: T.nilable(String),
              downloads: Integer,
              downloads_period: T.nilable(String),
              ecosystem: String,
              first_release_published_at: T.nilable(Time),
              funding_links: T::Array[String],
              homepage: T.nilable(String),
              install_command: T.nilable(String),
              keywords_array: T::Array[String],
              last_synced_at: T.nilable(Time),
              latest_release_number: T.nilable(String),
              latest_release_published_at: T.nilable(Time),
              licenses: T.nilable(String),
              maintainers: T::Array[Packages::Registries::Maintainer],
              metadata: T.nilable(T.anything),
              name: String,
              namespace: T.nilable(String),
              normalized_licenses: T::Array[String],
              purl: String,
              rankings: T.anything,
              registry_url: T.nilable(String),
              related_packages_url: String,
              repo_metadata: T.nilable(T.anything),
              repo_metadata_updated_at: T.nilable(Time),
              repository_url: T.nilable(String),
              status: T.nilable(String),
              updated_at: Time,
              usage_url: String,
              versions_count: Integer,
              versions_url: String,
              version_numbers_url: String
            }
          )
        end
        def to_hash
        end

        class Advisory < Packages::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Packages::Registries::Package::Advisory,
                Packages::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_accessor :classification

          sig { returns(String) }
          attr_accessor :created_at

          sig { returns(T.nilable(Float)) }
          attr_accessor :cvss_score

          sig { returns(T.nilable(String)) }
          attr_accessor :cvss_vector

          sig { returns(T.nilable(String)) }
          attr_accessor :description

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :identifiers

          sig { returns(T.nilable(String)) }
          attr_accessor :origin

          sig { returns(T::Array[T.anything]) }
          attr_accessor :packages

          sig { returns(T.nilable(String)) }
          attr_accessor :published_at

          sig { returns(T::Array[T.nilable(String)]) }
          attr_accessor :references

          sig { returns(T.nilable(String)) }
          attr_accessor :severity

          sig { returns(T.nilable(String)) }
          attr_accessor :source_kind

          sig { returns(T.nilable(String)) }
          attr_accessor :title

          sig { returns(String) }
          attr_accessor :updated_at

          sig { returns(T.nilable(String)) }
          attr_accessor :url

          sig { returns(String) }
          attr_accessor :uuid

          sig { returns(T.nilable(String)) }
          attr_accessor :withdrawn_at

          sig do
            params(
              classification: T.nilable(String),
              created_at: String,
              cvss_score: T.nilable(Float),
              cvss_vector: T.nilable(String),
              description: T.nilable(String),
              identifiers: T::Array[T.nilable(String)],
              origin: T.nilable(String),
              packages: T::Array[T.anything],
              published_at: T.nilable(String),
              references: T::Array[T.nilable(String)],
              severity: T.nilable(String),
              source_kind: T.nilable(String),
              title: T.nilable(String),
              updated_at: String,
              url: T.nilable(String),
              uuid: String,
              withdrawn_at: T.nilable(String)
            ).returns(T.attached_class)
          end
          def self.new(
            classification:,
            created_at:,
            cvss_score:,
            cvss_vector:,
            description:,
            identifiers:,
            origin:,
            packages:,
            published_at:,
            references:,
            severity:,
            source_kind:,
            title:,
            updated_at:,
            url:,
            uuid:,
            withdrawn_at:
          )
          end

          sig do
            override.returns(
              {
                classification: T.nilable(String),
                created_at: String,
                cvss_score: T.nilable(Float),
                cvss_vector: T.nilable(String),
                description: T.nilable(String),
                identifiers: T::Array[T.nilable(String)],
                origin: T.nilable(String),
                packages: T::Array[T.anything],
                published_at: T.nilable(String),
                references: T::Array[T.nilable(String)],
                severity: T.nilable(String),
                source_kind: T.nilable(String),
                title: T.nilable(String),
                updated_at: String,
                url: T.nilable(String),
                uuid: String,
                withdrawn_at: T.nilable(String)
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
