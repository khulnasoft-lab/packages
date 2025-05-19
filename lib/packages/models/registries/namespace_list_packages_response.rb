# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @type [Packages::Internal::Type::Converter]
      NamespaceListPackagesResponse = Packages::Internal::Type::ArrayOf[-> { Packages::Registries::Package }]
    end
  end
end
