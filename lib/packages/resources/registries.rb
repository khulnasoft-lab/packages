# frozen_string_literal: true

module Packages
  module Resources
    class Registries
      # @return [Packages::Resources::Registries::Maintainers]
      attr_reader :maintainers

      # @return [Packages::Resources::Registries::Namespaces]
      attr_reader :namespaces

      # @return [Packages::Resources::Registries::Packages]
      attr_reader :packages

      # get a registry by name
      #
      # @overload retrieve(registry_name, page: nil, per_page: nil, request_options: {})
      #
      # @param registry_name [String] name of registry
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Packages::Registry]
      #
      # @see Packages::Models::RegistryRetrieveParams
      def retrieve(registry_name, params = {})
        parsed, options = Packages::RegistryRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["registries/%1$s", registry_name],
          query: parsed,
          model: Packages::Registry,
          options: options
        )
      end

      # list registies
      #
      # @overload list(page: nil, per_page: nil, request_options: {})
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::Registry>]
      #
      # @see Packages::Models::RegistryListParams
      def list(params = {})
        parsed, options = Packages::RegistryListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "registries",
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::Registry],
          options: options
        )
      end

      # get a list of package names from a registry
      #
      # @overload list_package_names(registry_name, created_after: nil, created_before: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, updated_before: nil, request_options: {})
      #
      # @param registry_name [String] name of registry
      #
      # @param created_after [Time] filter by created_at after given time
      #
      # @param created_before [Time] filter by created_at before given time
      #
      # @param order [String] direction to order results by
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param sort [String] field to order results by
      #
      # @param updated_after [Time] filter by updated_at after given time
      #
      # @param updated_before [Time] filter by updated_at before given time
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<String>]
      #
      # @see Packages::Models::RegistryListPackageNamesParams
      def list_package_names(registry_name, params = {})
        parsed, options = Packages::RegistryListPackageNamesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["registries/%1$s/package_names", registry_name],
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[String],
          options: options
        )
      end

      # get a list of recently published versions from a registry
      #
      # @overload list_recent_versions(registry_name, created_after: nil, created_before: nil, order: nil, page: nil, per_page: nil, published_after: nil, published_before: nil, sort: nil, updated_after: nil, updated_before: nil, request_options: {})
      #
      # @param registry_name [String] name of registry
      #
      # @param created_after [Time] filter by created_at after given time
      #
      # @param created_before [Time] filter by created_at before given time
      #
      # @param order [String] direction to order results by
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param published_after [Time] filter by published_at after given time
      #
      # @param published_before [Time] filter by published_at before given time
      #
      # @param sort [String] field to order results by
      #
      # @param updated_after [Time] filter by updated_at after given time
      #
      # @param updated_before [Time] filter by updated_at before given time
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::Models::RegistryListRecentVersionsResponseItem>]
      #
      # @see Packages::Models::RegistryListRecentVersionsParams
      def list_recent_versions(registry_name, params = {})
        parsed, options = Packages::RegistryListRecentVersionsParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["registries/%1$s/versions", registry_name],
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::Models::RegistryListRecentVersionsResponseItem],
          options: options
        )
      end

      # lookup a package within a registry by repository URL, purl or ecosystem+name
      #
      # @overload lookup_package(registry_name, ecosystem: nil, name: nil, order: nil, purl: nil, repository_url: nil, sort: nil, request_options: {})
      #
      # @param registry_name [String] name of registry
      #
      # @param ecosystem [String] ecosystem name
      #
      # @param name [String] package name
      #
      # @param order [String] direction to sort results by
      #
      # @param purl [String] package URL
      #
      # @param repository_url [String] repository URL
      #
      # @param sort [String] field to sort results by
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::PackageWithRegistry>]
      #
      # @see Packages::Models::RegistryLookupPackageParams
      def lookup_package(registry_name, params = {})
        parsed, options = Packages::RegistryLookupPackageParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["registries/%1$s/lookup", registry_name],
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::PackageWithRegistry],
          options: options
        )
      end

      # @api private
      #
      # @param client [Packages::Client]
      def initialize(client:)
        @client = client
        @maintainers = Packages::Resources::Registries::Maintainers.new(client: client)
        @namespaces = Packages::Resources::Registries::Namespaces.new(client: client)
        @packages = Packages::Resources::Registries::Packages.new(client: client)
      end
    end
  end
end
