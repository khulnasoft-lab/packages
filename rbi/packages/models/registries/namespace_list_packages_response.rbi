# typed: strong

module Packages
  module Models
    module Registries
      NamespaceListPackagesResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[Packages::Registries::Package],
          Packages::Internal::Type::Converter
        )
    end
  end
end
