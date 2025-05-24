# typed: strong

module Packages
  module Models
    class DependencyListParams < Packages::Internal::Type::BaseModel
      extend Packages::Internal::Type::RequestParameters::Converter
      include Packages::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Packages::DependencyListParams, Packages::Internal::AnyHash)
        end

      # filter by id after given id
      sig { returns(T.nilable(String)) }
      attr_reader :after

      sig { params(after: String).void }
      attr_writer :after

      # ecosystem name
      sig { returns(T.nilable(String)) }
      attr_reader :ecosystem

      sig { params(ecosystem: String).void }
      attr_writer :ecosystem

      # kind
      sig { returns(T.nilable(String)) }
      attr_reader :kind

      sig { params(kind: String).void }
      attr_writer :kind

      # optional
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :optional

      sig { params(optional: T::Boolean).void }
      attr_writer :optional

      # package id
      sig { returns(T.nilable(String)) }
      attr_reader :package_id

      sig { params(package_id: String).void }
      attr_writer :package_id

      # package name
      sig { returns(T.nilable(String)) }
      attr_reader :package_name

      sig { params(package_name: String).void }
      attr_writer :package_name

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

      # requirements
      sig { returns(T.nilable(String)) }
      attr_reader :requirements

      sig { params(requirements: String).void }
      attr_writer :requirements

      sig do
        params(
          after: String,
          ecosystem: String,
          kind: String,
          optional: T::Boolean,
          package_id: String,
          package_name: String,
          page: Integer,
          per_page: Integer,
          requirements: String,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # filter by id after given id
        after: nil,
        # ecosystem name
        ecosystem: nil,
        # kind
        kind: nil,
        # optional
        optional: nil,
        # package id
        package_id: nil,
        # package name
        package_name: nil,
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        # requirements
        requirements: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            after: String,
            ecosystem: String,
            kind: String,
            optional: T::Boolean,
            package_id: String,
            package_name: String,
            page: Integer,
            per_page: Integer,
            requirements: String,
            request_options: Packages::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
