# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @see Packages::Resources::Registries::Namespaces#retrieve
      class Namespace < Packages::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute packages_count
        #
        #   @return [Integer]
        required :packages_count, Integer

        # @!attribute packages_url
        #
        #   @return [String]
        required :packages_url, String

        # @!method initialize(name:, packages_count:, packages_url:)
        #   @param name [String]
        #   @param packages_count [Integer]
        #   @param packages_url [String]
      end
    end
  end
end
