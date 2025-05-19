# frozen_string_literal: true

module Packages
  [Packages::Internal::Type::BaseModel, *Packages::Internal::Type::BaseModel.subclasses].each do |cls|
    cls.define_sorbet_constant!(:OrHash) { T.type_alias { T.any(cls, Packages::Internal::AnyHash) } }
  end

  [
    *Packages::Internal::Type::Enum.included_modules,
    *Packages::Internal::Type::Union.included_modules
  ].each do |cls|
    cls.constants.each do |name|
      case cls.const_get(name)
      in true | false
        cls.define_sorbet_constant!(:TaggedBoolean) { T.type_alias { T.all(T::Boolean, cls) } }
        cls.define_sorbet_constant!(:OrBoolean) { T.type_alias { T::Boolean } }
      in Integer
        cls.define_sorbet_constant!(:TaggedInteger) { T.type_alias { T.all(Integer, cls) } }
        cls.define_sorbet_constant!(:OrInteger) { T.type_alias { Integer } }
      in Float
        cls.define_sorbet_constant!(:TaggedFloat) { T.type_alias { T.all(Float, cls) } }
        cls.define_sorbet_constant!(:OrFloat) { T.type_alias { Float } }
      in Symbol
        cls.define_sorbet_constant!(:TaggedSymbol) { T.type_alias { T.all(Symbol, cls) } }
        cls.define_sorbet_constant!(:OrSymbol) { T.type_alias { T.any(Symbol, String) } }
      else
      end
    end
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
