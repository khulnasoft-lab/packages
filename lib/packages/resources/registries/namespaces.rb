# frozen_string_literal: true

module Packages
  module Resources
    class Registries
      class Namespaces
        # get a namespace by name
        #
        # @overload retrieve(namespace_name, registry_name:, request_options: {})
        #
        # @param namespace_name [String] name of namespace
        #
        # @param registry_name [String] name of registry
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Packages::Registries::Namespace]
        #
        # @see Packages::Models::Registries::NamespaceRetrieveParams
        def retrieve(namespace_name, params)
          parsed, options = Packages::Registries::NamespaceRetrieveParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/namespaces/%2$s", registry_name, namespace_name],
            model: Packages::Registries::Namespace,
            options: options
          )
        end

        # get a list of namespaces from a registry
        #
        # @overload list(registry_name, page: nil, per_page: nil, request_options: {})
        #
        # @param registry_name [String] name of registry
        #
        # @param page [Integer] pagination page number
        #
        # @param per_page [Integer] Number of records to return
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Packages::Registries::Namespace>]
        #
        # @see Packages::Models::Registries::NamespaceListParams
        def list(registry_name, params = {})
          parsed, options = Packages::Registries::NamespaceListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["registries/%1$s/namespaces", registry_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Namespace],
            options: options
          )
        end

        # get packages for a namespace by login or UUID
        #
        # @overload list_packages(namespace_name, registry_name:, page: nil, per_page: nil, request_options: {})
        #
        # @param namespace_name [String] Path param: lname of namespace
        #
        # @param registry_name [String] Path param: name of registry
        #
        # @param page [Integer] Query param: pagination page number
        #
        # @param per_page [Integer] Query param: Number of records to return
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Packages::Registries::Package>]
        #
        # @see Packages::Models::Registries::NamespaceListPackagesParams
        def list_packages(namespace_name, params)
          parsed, options = Packages::Registries::NamespaceListPackagesParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/namespaces/%2$s/packages", registry_name, namespace_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
            options: options
          )
        end

        # @api private
        #
        # @param client [Packages::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
