# frozen_string_literal: true

module Packages
  module Models
    # @type [Packages::Internal::Type::Converter]
    PackageLookupResponse = Packages::Internal::Type::ArrayOf[-> { Packages::PackageWithRegistry }]
  end
end
