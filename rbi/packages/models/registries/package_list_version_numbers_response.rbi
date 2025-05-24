# typed: strong

module Packages
  module Models
    module Registries
      PackageListVersionNumbersResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[String],
          Packages::Internal::Type::Converter
        )
    end
  end
end
