# typed: strong

module Packages
  module Models
    RegistryLookupPackageResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[Packages::PackageWithRegistry],
        Packages::Internal::Type::Converter
      )
  end
end
