# typed: strong

module Packages
  module Models
    class PackageWithRegistry < Packages::Models::Registries::Package
      OrHash =
        T.type_alias do
          T.any(Packages::PackageWithRegistry, Packages::Internal::AnyHash)
        end

      sig { returns(Packages::Registry) }
      attr_reader :registry

      sig { params(registry: Packages::Registry::OrHash).void }
      attr_writer :registry

      sig do
        params(registry: Packages::Registry::OrHash).returns(T.attached_class)
      end
      def self.new(registry:)
      end

      sig { override.returns({ registry: Packages::Registry }) }
      def to_hash
      end
    end
  end
end
