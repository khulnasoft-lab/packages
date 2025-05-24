# typed: strong

module Packages
  module Resources
    class Registries
      class Maintainers
        # get a maintainer by login or UUID
        sig do
          params(
            maintainer_login_or_uuid: String,
            registry_name: String,
            request_options: Packages::RequestOptions::OrHash
          ).returns(Packages::Registries::Maintainer)
        end
        def retrieve(
          # login or uuid of maintainer
          maintainer_login_or_uuid,
          # name of registry
          registry_name:,
          request_options: {}
        )
        end

        # get a list of maintainers from a registry
        sig do
          params(
            registry_name: String,
            created_after: Time,
            order: String,
            page: Integer,
            per_page: Integer,
            sort: String,
            updated_after: Time,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Maintainer])
        end
        def list(
          # name of registry
          registry_name,
          # filter by created_at after given time
          created_after: nil,
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

        # get packages for a maintainer by login or UUID
        sig do
          params(
            maintainer_login_or_uuid: String,
            registry_name: String,
            page: Integer,
            per_page: Integer,
            request_options: Packages::RequestOptions::OrHash
          ).returns(T::Array[Packages::Registries::Package])
        end
        def list_packages(
          # Path param: login or uuid of maintainer
          maintainer_login_or_uuid,
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
