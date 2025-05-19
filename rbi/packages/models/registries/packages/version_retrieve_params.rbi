# typed: strong

module Packages
  module Models
    module Registries
      module Packages
        class VersionRetrieveParams < Packages::Internal::Type::BaseModel
          extend Packages::Internal::Type::RequestParameters::Converter
          include Packages::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Packages::Registries::Packages::VersionRetrieveParams,
                Packages::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :registry_name

          sig { returns(String) }
          attr_accessor :package_name

          sig do
            params(
              registry_name: String,
              package_name: String,
              request_options: Packages::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(registry_name:, package_name:, request_options: {})
          end

          sig do
            override.returns(
              {
                registry_name: String,
                package_name: String,
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
end
