# typed: strong

module Packages
  module Resources
    class Registries
      class Packages
        class Versions
          # get a version of a package
          sig do
            params(
              version_number: String,
              registry_name: String,
              package_name: String,
              request_options: Packages::RequestOptions::OrHash
            ).returns(
              Packages::Models::Registries::Packages::VersionRetrieveResponse
            )
          end
          def retrieve(
            # number of version
            version_number,
            # name of registry
            registry_name:,
            # name of package
            package_name:,
            request_options: {}
          )
          end

          # get a list of versions for a package
          sig do
            params(
              package_name: String,
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
              T::Array[
                Packages::Models::Registries::Packages::VersionListResponseItem
              ]
            )
          end
          def list(
            # Path param: name of package
            package_name,
            # Path param: name of registry
            registry_name:,
            # Query param: filter by created_at after given time
            created_after: nil,
            # Query param: filter by created_at before given time
            created_before: nil,
            # Query param: direction to order results by
            order: nil,
            # Query param: pagination page number
            page: nil,
            # Query param: Number of records to return
            per_page: nil,
            # Query param: filter by published_at after given time
            published_after: nil,
            # Query param: filter by published_at before given time
            published_before: nil,
            # Query param: field to order results by
            sort: nil,
            # Query param: filter by updated_at after given time
            updated_after: nil,
            # Query param: filter by updated_at before given time
            updated_before: nil,
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
end
