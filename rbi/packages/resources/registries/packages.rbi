# typed: strong

module Packages
  module Resources
    class Registries
      class Packages
        sig { returns(Packages::Resources::Registries::Packages::Versions) }
        attr_reader :versions

        # get a package by name
        sig do
          params(
            package_name: String,
            registry_name: String,
            request_options: Packages::RequestOptions::OrHash
          ).returns(Packages::Registries::Package)
        end
        def retrieve(
          # name of package
          package_name,
          # name of registry
          registry_name:,
          request_options: {}
        )
        end

        # get a list of packages from a registry
        sig do
          params(
            registry_name: String,
            created_after: Time,
            created_before: Time,
            critical: T::Boolean,
            order: String,
            page: Integer,
            per_page: Integer,
            sort: String,
            updated_after: Time,
            updated_before: Time,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Package])
        end
        def list(
          # name of registry
          registry_name,
          # filter by created_at after given time
          created_after: nil,
          # filter by created_at before given time
          created_before: nil,
          # filter by critical packages
          critical: nil,
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
          # filter by updated_at before given time
          updated_before: nil,
          request_options: {}
        )
        end

        # get a list of dependency kinds for a package
        sig do
          params(
            package_name: String,
            registry_name: String,
            latest: T::Boolean,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[String])
        end
        def list_dependent_package_kinds(
          # Path param: name of package
          package_name,
          # Path param: name of registry
          registry_name:,
          # Query param: filter by latest version
          latest: nil,
          request_options: {}
        )
        end

        # get a list of packages that depend on a package
        sig do
          params(
            package_name: String,
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
          ).returns(T::Array[Packages::Registries::Package])
        end
        def list_dependent_packages(
          # Path param: name of package
          package_name,
          # Path param: name of registry
          registry_name:,
          # Query param: filter by created_at after given time
          created_after: nil,
          # Query param: filter by dependency kind
          kind: nil,
          # Query param: filter by latest version
          latest: nil,
          # Query param: direction to order results by
          order: nil,
          # Query param: pagination page number
          page: nil,
          # Query param: Number of records to return
          per_page: nil,
          # Query param: field to order results by
          sort: nil,
          # Query param: filter by updated_at after given time
          updated_after: nil,
          request_options: {}
        )
        end

        # get a list of packages that are related to a package
        sig do
          params(
            package_name: String,
            registry_name: String,
            created_after: Time,
            order: String,
            page: Integer,
            per_page: Integer,
            sort: String,
            updated_after: Time,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Package])
        end
        def list_related_packages(
          # Path param: name of package
          package_name,
          # Path param: name of registry
          registry_name:,
          # Query param: filter by created_at after given time
          created_after: nil,
          # Query param: direction to order results by
          order: nil,
          # Query param: pagination page number
          page: nil,
          # Query param: Number of records to return
          per_page: nil,
          # Query param: field to order results by
          sort: nil,
          # Query param: filter by updated_at after given time
          updated_after: nil,
          request_options: {}
        )
        end

        # get a list of version numbers for a package from a registry
        sig do
          params(
            package_name: String,
            registry_name: String,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[String])
        end
        def list_version_numbers(
          # name of package
          package_name,
          # name of registry
          registry_name:,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Packages::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
