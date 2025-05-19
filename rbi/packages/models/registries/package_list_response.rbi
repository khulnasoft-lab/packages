# typed: strong

module Packages
  module Models
    module Registries
      PackageListResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
          Packages::Internal::Type::Converter
        )
    end
  end
end
