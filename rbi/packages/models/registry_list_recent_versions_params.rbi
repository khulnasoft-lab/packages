# typed: strong

module Packages
  module Models
    class RegistryListRecentVersionsParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Packages::RegistryListRecentVersionsParams,
            Packages::Internal::AnyHash
          )
        end

      # filter by created_at after given time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_after

      sig { params(created_after: Time).void }
      attr_writer :created_after

      # filter by created_at before given time
      sig { returns(T.nilable(Time)) }
      attr_reader :created_before

      sig { params(created_before: Time).void }
      attr_writer :created_before

      # direction to order results by
      sig { returns(T.nilable(String)) }
      attr_reader :order

      sig { params(order: String).void }
      attr_writer :order

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

      # filter by published_at after given time
      sig { returns(T.nilable(Time)) }
      attr_reader :published_after

      sig { params(published_after: Time).void }
      attr_writer :published_after

      # filter by published_at before given time
      sig { returns(T.nilable(Time)) }
      attr_reader :published_before

      sig { params(published_before: Time).void }
      attr_writer :published_before

      # field to order results by
      sig { returns(T.nilable(String)) }
      attr_reader :sort

      sig { params(sort: String).void }
      attr_writer :sort

      # filter by updated_at after given time
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_after

      sig { params(updated_after: Time).void }
      attr_writer :updated_after

      # filter by updated_at before given time
      sig { returns(T.nilable(Time)) }
      attr_reader :updated_before

      sig { params(updated_before: Time).void }
      attr_writer :updated_before

      sig do
        params(
          created_after: Time,
          created_before: Time,
          order: String,
          page: Integer,
          per_page: Integer,
          published_after: Time,
          published_before: Time,
          sort: String,
          updated_after: Time,
          updated_before: Time,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter by created_at after given time
        created_after: nil,
        # filter by created_at before given time
        created_before: nil,
        # direction to order results by
        order: nil,
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        # filter by published_at after given time
        published_after: nil,
        # filter by published_at before given time
        published_before: nil,
        # field to order results by
        sort: nil,
        # filter by updated_at after given time
        updated_after: nil,
        # filter by updated_at before given time
        updated_before: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_after: Time,
            created_before: Time,
            order: String,
            page: Integer,
            per_page: Integer,
            published_after: Time,
            published_before: Time,
            sort: String,
            updated_after: Time,
            updated_before: Time,
            request_options: Packages::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
