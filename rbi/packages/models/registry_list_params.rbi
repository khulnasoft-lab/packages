# typed: strong

module Packages
  module Models
    class RegistryListParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Packages::RegistryListParams, Packages::Internal::AnyHash)
        end

      # pagination page number
      sig { returns(T.nilable(Integer)) }
      attr_reader :page

      sig { params(page: Integer).void }
      attr_writer :page

      # Number of records to return
      sig { returns(T.nilable(Integer)) }
      attr_reader :per_page

      sig { params(per_page: Integer).void }
      attr_writer :per_page

      sig do
        params(
          page: Integer,
          per_page: Integer,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            page: Integer,
            per_page: Integer,
            request_options: Packages::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
