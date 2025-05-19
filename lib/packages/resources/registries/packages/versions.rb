# frozen_string_literal: true

module Packages
  module Resources
    class Registries
      class Packages
        class Versions
          # get a version of a package
          #
          # @overload retrieve(version_number, registry_name:, package_name:, request_options: {})
          #
          # @param version_number [String] number of version
          #
          # @param registry_name [String] name of registry
          #
          # @param package_name [String] name of package
          #
          # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Packages::Models::Registries::Packages::VersionRetrieveResponse]
          #
          # @see Packages::Models::Registries::Packages::VersionRetrieveParams
          def retrieve(version_number, params)
            parsed, options = Packages::Registries::Packages::VersionRetrieveParams.dump_request(params)
            registry_name =
              parsed.delete(:registry_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            package_name =
              parsed.delete(:package_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "registries/%1$s/packages/%2$s/versions/%3$s",
                registry_name,
                package_name,
                version_number
              ],
              model: Packages::Models::Registries::Packages::VersionRetrieveResponse,
              options: options
            )
          end

          # get a list of versions for a package
          #
          # @overload list(package_name, registry_name:, created_after: nil, created_before: nil, order: nil, page: nil, per_page: nil, published_after: nil, published_before: nil, sort: nil, updated_after: nil, updated_before: nil, request_options: {})
          #
          # @param package_name [String] Path param: name of package
          #
          # @param registry_name [String] Path param: name of registry
          #
          # @param created_after [Time] Query param: filter by created_at after given time
          #
          # @param created_before [Time] Query param: filter by created_at before given time
          #
          # @param order [String] Query param: direction to order results by
          #
          # @param page [Integer] Query param: pagination page number
          #
          # @param per_page [Integer] Query param: Number of records to return
          #
          # @param published_after [Time] Query param: filter by published_at after given time
          #
          # @param published_before [Time] Query param: filter by published_at before given time
          #
          # @param sort [String] Query param: field to order results by
          #
          # @param updated_after [Time] Query param: filter by updated_at after given time
          #
          # @param updated_before [Time] Query param: filter by updated_at before given time
          #
          # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<Packages::Models::Registries::Packages::VersionListResponseItem>]
          #
          # @see Packages::Models::Registries::Packages::VersionListParams
          def list(package_name, params)
            parsed, options = Packages::Registries::Packages::VersionListParams.dump_request(params)
            registry_name =
              parsed.delete(:registry_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["registries/%1$s/packages/%2$s/versions", registry_name, package_name],
              query: parsed,
              model: Packages::Internal::Type::ArrayOf[Packages::Models::Registries::Packages::VersionListResponseItem],
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
end
