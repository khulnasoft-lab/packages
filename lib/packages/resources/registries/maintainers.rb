# frozen_string_literal: true

module Packages
  module Resources
    class Registries
      class Maintainers
        # get a maintainer by login or UUID
        #
        # @overload retrieve(maintainer_login_or_uuid, registry_name:, request_options: {})
        #
        # @param maintainer_login_or_uuid [String] login or uuid of maintainer
        #
        # @param registry_name [String] name of registry
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Packages::Registries::Maintainer]
        #
        # @see Packages::Models::Registries::MaintainerRetrieveParams
        def retrieve(maintainer_login_or_uuid, params)
          parsed, options = Packages::Registries::MaintainerRetrieveParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/maintainers/%2$s", registry_name, maintainer_login_or_uuid],
            model: Packages::Registries::Maintainer,
            options: options
          )
        end

        # get a list of maintainers from a registry
        #
        # @overload list(registry_name, created_after: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, request_options: {})
        #
        # @param registry_name [String] name of registry
        #
        # @param created_after [Time] filter by created_at after given time
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
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Packages::Registries::Maintainer>]
        #
        # @see Packages::Models::Registries::MaintainerListParams
        def list(registry_name, params = {})
          parsed, options = Packages::Registries::MaintainerListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["registries/%1$s/maintainers", registry_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Maintainer],
            options: options
          )
        end

        # get packages for a maintainer by login or UUID
        #
        # @overload list_packages(maintainer_login_or_uuid, registry_name:, page: nil, per_page: nil, request_options: {})
        #
        # @param maintainer_login_or_uuid [String] Path param: login or uuid of maintainer
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
        # @see Packages::Models::Registries::MaintainerListPackagesParams
        def list_packages(maintainer_login_or_uuid, params)
          parsed, options = Packages::Registries::MaintainerListPackagesParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/maintainers/%2$s/packages", registry_name, maintainer_login_or_uuid],
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
