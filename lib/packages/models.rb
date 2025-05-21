# frozen_string_literal: true

module Packages
  [Packages::Internal::Type::BaseModel, *Packages::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Packages::Internal::AnyHash) } }
  end

  Packages::Internal::Util.walk_namespaces(Packages::Models).each do |mod|
    case mod
    in Packages::Internal::Type::Enum | Packages::Internal::Type::Union
      mod.constants.each do |name|
        case mod.const_get(name)
        in true | false
          mod.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, mod) } }
          mod.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
        in Integer
          mod.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, mod) } }
          mod.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
        in Float
          mod.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, mod) } }
          mod.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
        in Symbol
          mod.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, mod) } }
          mod.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
        else
        end
      end
    else
    end
  end

  Packages::Internal::Util.walk_namespaces(Packages::Models)
                          .lazy
                          .grep(Packages::Internal::Type::Union)
                          .each do |mod|
    const = :Variants
    next if mod.sorbet_constant_defined?(const)

    mod.define_sorbet_constant!(const) { T.type_alias { mod.to_sorbet_type } }
  end

  Dependency = Packages::Models::Dependency

  DependencyListParams = Packages::Models::DependencyListParams

  Keyword = Packages::Models::Keyword

  KeywordListParams = Packages::Models::KeywordListParams

  KeywordRetrieveParams = Packages::Models::KeywordRetrieveParams

  PackageLookupParams = Packages::Models::PackageLookupParams

  PackageWithRegistry = Packages::Models::PackageWithRegistry

  Registries = Packages::Models::Registries

  Registry = Packages::Models::Registry

  RegistryListPackageNamesParams = Packages::Models::RegistryListPackageNamesParams

  RegistryListParams = Packages::Models::RegistryListParams

  RegistryListRecentVersionsParams = Packages::Models::RegistryListRecentVersionsParams

  RegistryLookupPackageParams = Packages::Models::RegistryLookupPackageParams

  RegistryRetrieveParams = Packages::Models::RegistryRetrieveParams
end
