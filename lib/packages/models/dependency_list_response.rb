# frozen_string_literal: true

module Packages
  module Models
    # @type [Packages::Internal::Type::Converter]
    DependencyListResponse = Packages::Internal::Type::ArrayOf[-> { Packages::Dependency }]
  end
end
