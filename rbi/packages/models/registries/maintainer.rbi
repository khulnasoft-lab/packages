# typed: strong

module Packages
  module Models
    module Registries
      class Maintainer < Packages::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Packages::Registries::Maintainer, Packages::Internal::AnyHash)
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(T.nilable(String)) }
        attr_accessor :email

        sig { returns(T.nilable(String)) }
        attr_accessor :html_url

        sig { returns(T.nilable(String)) }
        attr_accessor :login

        sig { returns(T.nilable(String)) }
        attr_accessor :name

        sig { returns(Integer) }
        attr_accessor :packages_count

        sig { returns(String) }
        attr_accessor :packages_url

        sig { returns(T.nilable(String)) }
        attr_accessor :role

        sig { returns(Integer) }
        attr_accessor :total_downloads

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_accessor :url

        sig { returns(String) }
        attr_accessor :uuid

        sig do
          params(
            created_at: Time,
            email: T.nilable(String),
            html_url: T.nilable(String),
            login: T.nilable(String),
            name: T.nilable(String),
            packages_count: Integer,
            packages_url: String,
            role: T.nilable(String),
            total_downloads: Integer,
            updated_at: Time,
            url: T.nilable(String),
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          email:,
          html_url:,
          login:,
          name:,
          packages_count:,
          packages_url:,
          role:,
          total_downloads:,
          updated_at:,
          url:,
          uuid:
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              email: T.nilable(String),
              html_url: T.nilable(String),
              login: T.nilable(String),
              name: T.nilable(String),
              packages_count: Integer,
              packages_url: String,
              role: T.nilable(String),
              total_downloads: Integer,
              updated_at: Time,
              url: T.nilable(String),
              uuid: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
