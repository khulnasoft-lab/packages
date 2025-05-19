# typed: strong

module Packages
  module Models
    module Registries
      MaintainerListResponse =
        T.let(
          Packages::Internal::Type::ArrayOf[Packages::Registries::Maintainer],
          Packages::Internal::Type::Converter
        )
    end
  end
end
