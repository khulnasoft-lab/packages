# typed: strong

module Packages
  module Models
    class Registry < Packages::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Packages::Registry, Packages::Internal::AnyHash) }

      sig { returns(Time) }
      attr_accessor :created_at

      sig { returns(T::Boolean) }
      attr_accessor :default

      sig { returns(Integer) }
      attr_accessor :downloads

      sig { returns(String) }
      attr_accessor :ecosystem

      sig { returns(T.nilable(String)) }
      attr_accessor :github

      sig { returns(String) }
      attr_accessor :icon_url

      sig { returns(Integer) }
      attr_accessor :keywords_count

      sig { returns(Integer) }
      attr_accessor :maintainers_count

      sig { returns(String) }
      attr_accessor :maintainers_url

      sig { returns(T.nilable(T.anything)) }
      attr_accessor :metadata

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Integer) }
      attr_accessor :namespaces_count

      sig { returns(Integer) }
      attr_accessor :packages_count

      sig { returns(String) }
      attr_accessor :packages_url

      sig { returns(String) }
      attr_accessor :purl_type

      sig { returns(Time) }
      attr_accessor :updated_at

      sig { returns(String) }
      attr_accessor :url

      sig { returns(T.nilable(Integer)) }
      attr_reader :versions_count

      sig { params(versions_count: Integer).void }
      attr_writer :versions_count

      sig do
        params(
          created_at: Time,
          default: T::Boolean,
          downloads: Integer,
          ecosystem: String,
          github: T.nilable(String),
          icon_url: String,
          keywords_count: Integer,
          maintainers_count: Integer,
          maintainers_url: String,
          metadata: T.nilable(T.anything),
          name: String,
          namespaces_count: Integer,
          packages_count: Integer,
          packages_url: String,
          purl_type: String,
          updated_at: Time,
          url: String,
          versions_count: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        created_at:,
        default:,
        downloads:,
        ecosystem:,
        github:,
        icon_url:,
        keywords_count:,
        maintainers_count:,
        maintainers_url:,
        metadata:,
        name:,
        namespaces_count:,
        packages_count:,
        packages_url:,
        purl_type:,
        updated_at:,
        url:,
        versions_count: nil
      )
      end

      sig do
        override.returns(
          {
            created_at: Time,
            default: T::Boolean,
            downloads: Integer,
            ecosystem: String,
            github: T.nilable(String),
            icon_url: String,
            keywords_count: Integer,
            maintainers_count: Integer,
            maintainers_url: String,
            metadata: T.nilable(T.anything),
            name: String,
            namespaces_count: Integer,
            packages_count: Integer,
            packages_url: String,
            purl_type: String,
            updated_at: Time,
            url: String,
            versions_count: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
