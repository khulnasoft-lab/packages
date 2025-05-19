# typed: strong

module Packages
  module Models
    RegistryListResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[Packages::Registry],
        Packages::Internal::Type::Converter
      )
  end
end
