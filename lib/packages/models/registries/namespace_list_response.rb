# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @type [Packages::Internal::Type::Converter]
      NamespaceListResponse = Packages::Internal::Type::ArrayOf[-> { Packages::Registries::Namespace }]
    end
  end
end
