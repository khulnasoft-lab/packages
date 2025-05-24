# typed: strong

module Packages
  module Models
    module Registries
      PackageListDependentPackageKindsResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[String],
          Packages::Internal::Type::Converter
        )
    end
  end
end
