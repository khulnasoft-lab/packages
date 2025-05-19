# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Maintainers#retrieve
      class Maintainer < Packages::Internal::Type::BaseModel
        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time

        # @!attribute email
        #
        #   @return [String, nil]
        required :email, String, nil?: true

        # @!attribute html_url
        #
        #   @return [String, nil]
        required :html_url, String, nil?: true

        # @!attribute login
        #
        #   @return [String, nil]
        required :login, String, nil?: true

        # @!attribute name
        #
        #   @return [String, nil]
        required :name, String, nil?: true

        # @!attribute packages_count
        #
        #   @return [Integer]
        required :packages_count, Integer

        # @!attribute packages_url
        #
        #   @return [String]
        required :packages_url, String

        # @!attribute role
        #
        #   @return [String, nil]
        required :role, String, nil?: true

        # @!attribute total_downloads
        #
        #   @return [Integer]
        required :total_downloads, Integer

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time

        # @!attribute url
        #
        #   @return [String, nil]
        required :url, String, nil?: true

        # @!attribute uuid
        #
        #   @return [String]
        required :uuid, String

        # @!method initialize(created_at:, email:, html_url:, login:, name:, packages_count:, packages_url:, role:, total_downloads:, updated_at:, url:, uuid:)
        #   @param created_at [Time]
        #   @param email [String, nil]
        #   @param html_url [String, nil]
        #   @param login [String, nil]
        #   @param name [String, nil]
        #   @param packages_count [Integer]
        #   @param packages_url [String]
        #   @param role [String, nil]
        #   @param total_downloads [Integer]
        #   @param updated_at [Time]
        #   @param url [String, nil]
        #   @param uuid [String]
      end
    end
  end
end
