# typed: strong

module Packages
  Dependency = Packages::Models::Dependency

  DependencyListParams = Packages::Models::DependencyListParams

  Keyword = Packages::Models::Keyword

  KeywordListParams = Packages::Models::KeywordListParams

  KeywordRetrieveParams = Packages::Models::KeywordRetrieveParams

  PackageLookupParams = Packages::Models::PackageLookupParams

  PackageWithRegistry = Packages::Models::PackageWithRegistry

  Registries = Packages::Models::Registries

  Registry = Packages::Models::Registry

  RegistryListPackageNamesParams =
    Packages::Models::RegistryListPackageNamesParams

  RegistryListParams = Packages::Models::RegistryListParams

  RegistryListRecentVersionsParams =
    Packages::Models::RegistryListRecentVersionsParams

  RegistryLookupPackageParams = Packages::Models::RegistryLookupPackageParams

  RegistryRetrieveParams = Packages::Models::RegistryRetrieveParams
end
