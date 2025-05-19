# typed: strong

module Packages
  module Models
    module Registries
      class PackageListDependentPackagesParams < Packages::Internal::Type::BaseModel
        extend Packages::Internal::Type::RequestParameters::Converter
        include Packages::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Packages::Registries::PackageListDependentPackagesParams,
              Packages::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :registry_name

        # filter by created_at after given time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_after

        sig { params(created_after: Time).void }
        attr_writer :created_after

        # filter by dependency kind
        sig { returns(T.nilable(String)) }
        attr_reader :kind

        sig { params(kind: String).void }
        attr_writer :kind

        # filter by latest version
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :latest

        sig { params(latest: T::Boolean).void }
        attr_writer :latest

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

        sig do
          params(
            registry_name: String,
            created_after: Time,
            kind: String,
            latest: T::Boolean,
            order: String,
            page: Integer,
            per_page: Integer,
            sort: String,
            updated_after: Time,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          registry_name:,
          # filter by created_at after given time
          created_after: nil,
          # filter by dependency kind
          kind: nil,
          # filter by latest version
          latest: nil,
          # direction to order results by
          order: nil,
          # pagination page number
          page: nil,
          # Number of records to return
          per_page: nil,
          # field to order results by
          sort: nil,
          # filter by updated_at after given time
          updated_after: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              registry_name: String,
              created_after: Time,
              kind: String,
              latest: T::Boolean,
              order: String,
              page: Integer,
              per_page: Integer,
              sort: String,
              updated_after: Time,
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
