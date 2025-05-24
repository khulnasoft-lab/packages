# typed: strong

module Packages
  module Models
    module Registries
      PackageListRelatedPackagesResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
          Packages::Internal::Type::Converter
        )
    end
  end
end
