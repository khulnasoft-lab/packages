# typed: strong

module Packages
  module Models
    RegistryListPackageNamesResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[String],
        Packages::Internal::Type::Converter
      )
  end
end
