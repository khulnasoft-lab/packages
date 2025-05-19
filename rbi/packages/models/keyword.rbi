# typed: strong

module Packages
  module Models
    class Keyword < Packages::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Packages::Keyword, Packages::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :name

      sig { returns(Integer) }
      attr_accessor :packages_count

      sig { returns(String) }
      attr_accessor :packages_url

      sig do
        params(
          name: String,
          packages_count: Integer,
          packages_url: String
        ).returns(T.attached_class)
      end
      def self.new(name:, packages_count:, packages_url:)
      end

      sig do
        override.returns(
          { name: String, packages_count: Integer, packages_url: String }
        )
      end
      def to_hash
      end
    end
  end
end
