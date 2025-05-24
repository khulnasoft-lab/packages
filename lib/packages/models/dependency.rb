# frozen_string_literal: true

module Packages
  module Models
    class Dependency < Packages::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [Integer]
      required :id, Integer

      # @!attribute ecosystem
      #
      #   @return [String]
      required :ecosystem, String

      # @!attribute kind
      #
      #   @return [String, nil]
      required :kind, String, nil?: true

      # @!attribute optional
      #
      #   @return [Boolean, nil]
      required :optional, Packages::Internal::Type::Boolean, nil?: true

      # @!attribute package_name
      #
      #   @return [String]
      required :package_name, String

      # @!attribute requirements
      #
      #   @return [String, nil]
      required :requirements, String, nil?: true

      # @!method initialize(id:, ecosystem:, kind:, optional:, package_name:, requirements:)
      #   @param id [Integer]
      #   @param ecosystem [String]
      #   @param kind [String, nil]
      #   @param optional [Boolean, nil]
      #   @param package_name [String]
      #   @param requirements [String, nil]
    end
  end
end
