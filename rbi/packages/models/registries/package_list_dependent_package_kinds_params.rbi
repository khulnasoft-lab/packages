# typed: strong

module Packages
  module Models
    module Registries
      class PackageListDependentPackageKindsParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Packages::Registries::PackageListDependentPackageKindsParams,
              Packages::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :registry_name

        # filter by latest version
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :latest

        sig { params(latest: T::Boolean).void }
        attr_writer :latest

        sig do
          params(
            registry_name: String,
            latest: T::Boolean,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          registry_name:,
          # filter by latest version
          latest: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              registry_name: String,
              latest: T::Boolean,
              request_options: Packages::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
