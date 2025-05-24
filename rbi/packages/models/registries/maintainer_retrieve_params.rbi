# typed: strong

module Packages
  module Models
    module Registries
      class MaintainerRetrieveParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Packages::Registries::MaintainerRetrieveParams,
              Packages::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :registry_name

        sig do
          params(
            registry_name: String,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(registry_name:, request_options: {})
        end

        sig do
          override.returns(
            { registry_name: String, request_options: Packages::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
