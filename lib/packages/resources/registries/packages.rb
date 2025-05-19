# frozen_string_literal: true

module Packages
  module Resources
    class Registries
      class Packages
        # @return [Packages::Resources::Registries::Packages::Versions]
        attr_reader :versions

        # get a package by name
        #
        # @overload retrieve(package_name, registry_name:, request_options: {})
        #
        # @param package_name [String] name of package
        #
        # @param registry_name [String] name of registry
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Packages::Registries::Package]
        #
        # @see Packages::Models::Registries::PackageRetrieveParams
        def retrieve(package_name, params)
          parsed, options = Packages::Registries::PackageRetrieveParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages/%2$s", registry_name, package_name],
            model: Packages::Registries::Package,
            options: options
          )
        end

        # get a list of packages from a registry
        #
        # @overload list(registry_name, created_after: nil, created_before: nil, critical: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, updated_before: nil, request_options: {})
        #
        # @param registry_name [String] name of registry
        #
        # @param created_after [Time] filter by created_at after given time
        #
        # @param created_before [Time] filter by created_at before given time
        #
        # @param critical [Boolean] filter by critical packages
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
        # @return [Array<Packages::Registries::Package>]
        #
        # @see Packages::Models::Registries::PackageListParams
        def list(registry_name, params = {})
          parsed, options = Packages::Registries::PackageListParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages", registry_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
            options: options
          )
        end

        # get a list of dependency kinds for a package
        #
        # @overload list_dependent_package_kinds(package_name, registry_name:, latest: nil, request_options: {})
        #
        # @param package_name [String] Path param: name of package
        #
        # @param registry_name [String] Path param: name of registry
        #
        # @param latest [Boolean] Query param: filter by latest version
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<String>]
        #
        # @see Packages::Models::Registries::PackageListDependentPackageKindsParams
        def list_dependent_package_kinds(package_name, params)
          parsed, options = Packages::Registries::PackageListDependentPackageKindsParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages/%2$s/dependent_package_kinds", registry_name, package_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[String],
            options: options
          )
        end

        # get a list of packages that depend on a package
        #
        # @overload list_dependent_packages(package_name, registry_name:, created_after: nil, kind: nil, latest: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, request_options: {})
        #
        # @param package_name [String] Path param: name of package
        #
        # @param registry_name [String] Path param: name of registry
        #
        # @param created_after [Time] Query param: filter by created_at after given time
        #
        # @param kind [String] Query param: filter by dependency kind
        #
        # @param latest [Boolean] Query param: filter by latest version
        #
        # @param order [String] Query param: direction to order results by
        #
        # @param page [Integer] Query param: pagination page number
        #
        # @param per_page [Integer] Query param: Number of records to return
        #
        # @param sort [String] Query param: field to order results by
        #
        # @param updated_after [Time] Query param: filter by updated_at after given time
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Packages::Registries::Package>]
        #
        # @see Packages::Models::Registries::PackageListDependentPackagesParams
        def list_dependent_packages(package_name, params)
          parsed, options = Packages::Registries::PackageListDependentPackagesParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages/%2$s/dependent_packages", registry_name, package_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
            options: options
          )
        end

        # get a list of packages that are related to a package
        #
        # @overload list_related_packages(package_name, registry_name:, created_after: nil, order: nil, page: nil, per_page: nil, sort: nil, updated_after: nil, request_options: {})
        #
        # @param package_name [String] Path param: name of package
        #
        # @param registry_name [String] Path param: name of registry
        #
        # @param created_after [Time] Query param: filter by created_at after given time
        #
        # @param order [String] Query param: direction to order results by
        #
        # @param page [Integer] Query param: pagination page number
        #
        # @param per_page [Integer] Query param: Number of records to return
        #
        # @param sort [String] Query param: field to order results by
        #
        # @param updated_after [Time] Query param: filter by updated_at after given time
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<Packages::Registries::Package>]
        #
        # @see Packages::Models::Registries::PackageListRelatedPackagesParams
        def list_related_packages(package_name, params)
          parsed, options = Packages::Registries::PackageListRelatedPackagesParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages/%2$s/related_packages", registry_name, package_name],
            query: parsed,
            model: Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
            options: options
          )
        end

        # get a list of version numbers for a package from a registry
        #
        # @overload list_version_numbers(package_name, registry_name:, request_options: {})
        #
        # @param package_name [String] name of package
        #
        # @param registry_name [String] name of registry
        #
        # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<String>]
        #
        # @see Packages::Models::Registries::PackageListVersionNumbersParams
        def list_version_numbers(package_name, params)
          parsed, options = Packages::Registries::PackageListVersionNumbersParams.dump_request(params)
          registry_name =
            parsed.delete(:registry_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["registries/%1$s/packages/%2$s/version_numbers", registry_name, package_name],
            model: Packages::Internal::Type::ArrayOf[String],
            options: options
          )
        end

        # @api private
        #
        # @param client [Packages::Client]
        def initialize(client:)
          @client = client
          @versions = Packages::Resources::Registries::Packages::Versions.new(client: client)
        end
      end
    end
  end
end
