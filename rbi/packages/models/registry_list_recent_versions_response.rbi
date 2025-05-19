# typed: strong

module Packages
  module Models
    class RegistryListRecentVersionsResponseItem < Packages::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Packages::Models::RegistryListRecentVersionsResponseItem,
            Packages::Internal::AnyHash
          )
        end

      sig { returns(Integer) }
      attr_accessor :id

      sig { returns(Time) }
      attr_accessor :created_at

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

      sig { returns(String) }
      attr_accessor :package_url

      sig { returns(T.nilable(String)) }
      attr_accessor :published_at

      sig { returns(String) }
      attr_accessor :purl

      sig { returns(T.nilable(String)) }
      attr_accessor :registry_url

      sig { returns(T.nilable(String)) }
      attr_accessor :status

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :version_url

      sig do
        params(
          id: Integer,
          created_at: Time,
          documentation_url: T.nilable(String),
          download_url: T.nilable(String),
          install_command: T.nilable(String),
          integrity: T.nilable(String),
          latest: T::Boolean,
          licenses: T.nilable(String),
          metadata: T.nilable(T.anything),
          number: String,
          package_url: String,
          published_at: T.nilable(String),
          purl: String,
          registry_url: T.nilable(String),
          status: T.nilable(String),
          updated_at: Time,
          version_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        created_at:,
        documentation_url:,
        download_url:,
        install_command:,
        integrity:,
        latest:,
        licenses:,
        metadata:,
        number:,
        package_url:,
        published_at:,
        purl:,
        registry_url:,
        status:,
        updated_at:,
        version_url:
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            created_at: Time,
            documentation_url: T.nilable(String),
            download_url: T.nilable(String),
            install_command: T.nilable(String),
            integrity: T.nilable(String),
            latest: T::Boolean,
            licenses: T.nilable(String),
            metadata: T.nilable(T.anything),
            number: String,
            package_url: String,
            published_at: T.nilable(String),
            purl: String,
            registry_url: T.nilable(String),
            status: T.nilable(String),
            updated_at: Time,
            version_url: String
          }
        )
      end
      def to_hash
      end
    end

    RegistryListRecentVersionsResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[
          Packages::Models::RegistryListRecentVersionsResponseItem
        ],
        Packages::Internal::Type::Converter
      )
  end
end
