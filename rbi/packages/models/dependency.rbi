# typed: strong

module Packages
  module Models
    class Dependency < Packages::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Packages::Dependency, Packages::Internal::AnyHash)
        end

      sig { returns(Integer) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :ecosystem

      sig { returns(T.nilable(String)) }
      attr_accessor :kind

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :optional

      sig { returns(String) }
      attr_accessor :package_name

      sig { returns(T.nilable(String)) }
      attr_accessor :requirements

      sig do
        params(
          id: Integer,
          ecosystem: String,
          kind: T.nilable(String),
          optional: T.nilable(T::Boolean),
          package_name: String,
          requirements: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        ecosystem:,
        kind:,
        optional:,
        package_name:,
        requirements:
      )
      end

      sig do
        override.returns(
          {
            id: Integer,
            ecosystem: String,
            kind: T.nilable(String),
            optional: T.nilable(T::Boolean),
            package_name: String,
            requirements: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
