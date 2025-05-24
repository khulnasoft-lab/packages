# typed: strong

module Packages
  module Models
    class RegistryLookupPackageParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Packages::RegistryLookupPackageParams,
            Packages::Internal::AnyHash
          )
        end

      # ecosystem name
      sig { returns(T.nilable(String)) }
      attr_reader :ecosystem

      sig { params(ecosystem: String).void }
      attr_writer :ecosystem

      # package name
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # direction to sort results by
      sig { returns(T.nilable(String)) }
      attr_reader :order

      sig { params(order: String).void }
      attr_writer :order

      # package URL
      sig { returns(T.nilable(String)) }
      attr_reader :purl

      sig { params(purl: String).void }
      attr_writer :purl

      # repository URL
      sig { returns(T.nilable(String)) }
      attr_reader :repository_url

      sig { params(repository_url: String).void }
      attr_writer :repository_url

      # field to sort results by
      sig { returns(T.nilable(String)) }
      attr_reader :sort

      sig { params(sort: String).void }
      attr_writer :sort

      sig do
        params(
          ecosystem: String,
          name: String,
          order: String,
          purl: String,
          repository_url: String,
          sort: String,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ecosystem name
        ecosystem: nil,
        # package name
        name: nil,
        # direction to sort results by
        order: nil,
        # package URL
        purl: nil,
        # repository URL
        repository_url: nil,
        # field to sort results by
        sort: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            ecosystem: String,
            name: String,
            order: String,
            purl: String,
            repository_url: String,
            sort: String,
            request_options: Packages::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
