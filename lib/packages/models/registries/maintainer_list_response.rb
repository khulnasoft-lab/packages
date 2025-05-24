# frozen_string_literal: true

module Packages
  module Models
    module Registries
      # @type [Packages::Internal::Type::Converter]
      MaintainerListResponse = Packages::Internal::Type::ArrayOf[-> { Packages::Registries::Maintainer }]
    end
  end
end
