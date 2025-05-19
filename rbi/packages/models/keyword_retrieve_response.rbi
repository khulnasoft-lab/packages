# typed: strong

module Packages
  module Models
    class KeywordRetrieveResponse < Packages::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Packages::Models::KeywordRetrieveResponse,
            Packages::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[Packages::Registries::Package]) }
      attr_accessor :packages

      sig { returns(Integer) }
      attr_accessor :packages_count

      sig { returns(String) }
      attr_accessor :packages_url

      sig { returns(T::Array[Packages::Keyword]) }
      attr_accessor :related_keywords

      sig do
        params(
          name: String,
          packages: T::Array[Packages::Registries::Package::OrHash],
          packages_count: Integer,
          packages_url: String,
          related_keywords: T::Array[Packages::Keyword::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        packages:,
        packages_count:,
        packages_url:,
        related_keywords:
      )
      end

      sig do
        override.returns(
          {
            name: String,
            packages: T::Array[Packages::Registries::Package],
            packages_count: Integer,
            packages_url: String,
            related_keywords: T::Array[Packages::Keyword]
          }
        )
      end
      def to_hash
      end
    end
  end
end
