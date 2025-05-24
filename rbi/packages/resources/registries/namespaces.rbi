# typed: strong

module Packages
  module Resources
    class Registries
      class Namespaces
        # get a namespace by name
        sig do
          params(
            namespace_name: String,
            registry_name: String,
            request_options: Packages::RequestOptions::OrHash
          ).returns(Packages::Registries::Namespace)
        end
        def retrieve(
          # name of namespace
          namespace_name,
          # name of registry
          registry_name:,
          request_options: {}
        )
        end

        # get a list of namespaces from a registry
        sig do
          params(
            registry_name: String,
            page: Integer,
            per_page: Integer,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Namespace])
        end
        def list(
          # name of registry
          registry_name,
          # pagination page number
          page: nil,
          # Number of records to return
          per_page: nil,
          request_options: {}
        )
        end

        # get packages for a namespace by login or UUID
        sig do
          params(
            namespace_name: String,
            registry_name: String,
            page: Integer,
            per_page: Integer,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Package])
        end
        def list_packages(
          # Path param: lname of namespace
          namespace_name,
          # Path param: name of registry
          registry_name:,
          # Query param: pagination page number
          page: nil,
          # Query param: Number of records to return
          per_page: nil,
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
