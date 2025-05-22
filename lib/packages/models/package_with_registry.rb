# frozen_string_literal: true

module Packages
  module Models
    class PackageWithRegistry < Packages::Models::Registries::Package
      # @!attribute registry
      #
      #   @return [Packages::Models::Registry]
      required :registry, -> { Packages::Registry }

      # @!method initialize(registry:)
      #   @param registry [Packages::Models::Registry]
    end
  end
end
