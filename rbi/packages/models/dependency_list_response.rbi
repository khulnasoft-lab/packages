# typed: strong

module Packages
  module Models
    DependencyListResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[Packages::Dependency],
        Packages::Internal::Type::Converter
      )
  end
end
