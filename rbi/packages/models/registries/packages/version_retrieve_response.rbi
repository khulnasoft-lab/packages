# typed: strong

module Packages
  module Models
    module Registries
      module Packages
        class VersionRetrieveResponse < Packages::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Packages::Models::Registries::Packages::VersionRetrieveResponse,
                Packages::Internal::AnyHash
              )
            end

          sig { returns(Time) }
          attr_accessor :created_at

          sig { returns(T::Array[Packages::Dependency]) }
          attr_accessor :dependencies

          sig { returns(T.nilable(String)) }
          attr_accessor :documentation_url

          sig { returns(T.nilable(String)) }
          attr_accessor :download_url

          sig { returns(T.nilable(String)) }
          attr_accessor :install_command

          sig { returns(T.nilable(String)) }
          attr_accessor :integrity

          sig { returns(T::Boolean) }
          attr_accessor :latest

          sig { returns(T.nilable(String)) }
          attr_accessor :licenses

          sig { returns(T.nilable(T.anything)) }
          attr_accessor :metadata

          sig { returns(String) }
          attr_accessor :number

          sig { returns(T.nilable(String)) }
          attr_accessor :published_at

          sig { returns(String) }
          attr_accessor :purl

          sig { returns(T.nilable(String)) }
          attr_accessor :registry_url

          sig { returns(T.anything) }
          attr_accessor :related_tag

          sig { returns(T.nilable(String)) }
          attr_accessor :status

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(String) }
          attr_accessor :version_url

          sig { returns(T.nilable(Integer)) }
          attr_reader :id

          sig { params(id: Integer).void }
          attr_writer :id

          sig do
            params(
              created_at: Time,
              dependencies: T::Array[Packages::Dependency::OrHash],
              documentation_url: T.nilable(String),
              download_url: T.nilable(String),
              install_command: T.nilable(String),
              integrity: T.nilable(String),
              latest: T::Boolean,
              licenses: T.nilable(String),
              metadata: T.nilable(T.anything),
              number: String,
              published_at: T.nilable(String),
              purl: String,
              registry_url: T.nilable(String),
              related_tag: T.anything,
              status: T.nilable(String),
              updated_at: Time,
              version_url: String,
              id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            created_at:,
            dependencies:,
            documentation_url:,
            download_url:,
            install_command:,
            integrity:,
            latest:,
            licenses:,
            metadata:,
            number:,
            published_at:,
            purl:,
            registry_url:,
            related_tag:,
            status:,
            updated_at:,
            version_url:,
            id: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                dependencies: T::Array[Packages::Dependency],
                documentation_url: T.nilable(String),
                download_url: T.nilable(String),
                install_command: T.nilable(String),
                integrity: T.nilable(String),
                latest: T::Boolean,
                licenses: T.nilable(String),
                metadata: T.nilable(T.anything),
                number: String,
                published_at: T.nilable(String),
                purl: String,
                registry_url: T.nilable(String),
                related_tag: T.anything,
                status: T.nilable(String),
                updated_at: Time,
                version_url: String,
                id: Integer
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
