# typed: strong

module Packages
  module Resources
    class Registries
      sig { returns(Packages::Resources::Registries::Maintainers) }
      attr_reader :maintainers

      sig { returns(Packages::Resources::Registries::Namespaces) }
      attr_reader :namespaces

      sig { returns(Packages::Resources::Registries::Packages) }
      attr_reader :packages

      # get a registry by name
      sig do
        params(
          registry_name: String,
          page: Integer,
          per_page: Integer,
          request_options: Packages::RequestOptions::OrHash
        ).returns(Packages::Registry)
      end
      def retrieve(
        # name of registry
        registry_name,
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        request_options: {}
      )
      end

      # list registies
      sig do
        params(
          page: Integer,
          per_page: Integer,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[Packages::Registry])
      end
      def list(
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        request_options: {}
      )
      end

      # get a list of package names from a registry
      sig do
        params(
          registry_name: String,
          created_after: Time,
          created_before: Time,
          order: String,
          page: Integer,
          per_page: Integer,
          sort: String,
          updated_after: Time,
          updated_before: Time,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[String])
      end
      def list_package_names(
        # name of registry
        registry_name,
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
        # field to order results by
        sort: nil,
        # filter by updated_at after given time
        updated_after: nil,
        # filter by updated_at before given time
        updated_before: nil,
        request_options: {}
      )
      end

      # get a list of recently published versions from a registry
      sig do
        params(
          registry_name: String,
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
        ).returns(
          T::Array[Packages::Models::RegistryListRecentVersionsResponseItem]
        )
      end
      def list_recent_versions(
        # name of registry
        registry_name,
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

      # lookup a package within a registry by repository URL, purl or ecosystem+name
      sig do
        params(
          registry_name: String,
          ecosystem: String,
          name: String,
          order: String,
          purl: String,
          repository_url: String,
          sort: String,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[Packages::PackageWithRegistry])
      end
      def lookup_package(
        # name of registry
        registry_name,
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

      # @api private
      sig { params(client: Packages::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
