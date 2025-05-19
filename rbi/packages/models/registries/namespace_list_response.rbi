# typed: strong

module Packages
  module Models
    module Registries
      NamespaceListResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[Packages::Registries::Namespace],
          Packages::Internal::Type::Converter
        )
    end
  end
end
