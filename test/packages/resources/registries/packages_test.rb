# frozen_string_literal: true

require_relative "../../test_helper"

class Packages::Test::Resources::Registries::PackagesTest < Packages::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.packages.retrieve("packageName", registry_name: "registryName")

    assert_pattern do
      response => Packages::Registries::Package
    end

    assert_pattern do
      response => {
        id: Integer,
        advisories: ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package::Advisory]),
        created_at: Time,
        critical: Packages::Internal::Type::Boolean,
        dependent_packages_count: Integer,
        dependent_packages_url: String,
        dependent_repos_count: Integer,
        dependent_repositories_url: String,
        description: String | nil,
        docker_dependents_count: Integer,
        docker_downloads_count: Integer,
        docker_usage_url: String,
        documentation_url: String | nil,
        downloads: Integer,
        downloads_period: String | nil,
        ecosystem: String,
        first_release_published_at: Time | nil,
        funding_links: ^(Packages::Internal::Type::ArrayOf[String]),
        homepage: String | nil,
        install_command: String | nil,
        keywords_array: ^(Packages::Internal::Type::ArrayOf[String]),
        last_synced_at: Time | nil,
        latest_release_number: String | nil,
        latest_release_published_at: Time | nil,
        licenses: String | nil,
        maintainers: ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Maintainer]),
        metadata: Packages::Internal::Type::Unknown | nil,
        name: String,
        namespace: String | nil,
        normalized_licenses: ^(Packages::Internal::Type::ArrayOf[String]),
        purl: String,
        rankings: Packages::Internal::Type::Unknown,
        registry_url: String | nil,
        related_packages_url: String,
        repo_metadata: Packages::Internal::Type::Unknown | nil,
        repo_metadata_updated_at: Time | nil,
        repository_url: String | nil,
        status: String | nil,
        updated_at: Time,
        usage_url: String,
        versions_count: Integer,
        versions_url: String,
        version_numbers_url: String | nil
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.packages.list("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package])
    end
  end

  def test_list_dependent_package_kinds_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.packages.list_dependent_package_kinds("packageName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[String])
    end
  end

  def test_list_dependent_packages_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.packages.list_dependent_packages("packageName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package])
    end
  end

  def test_list_related_packages_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.packages.list_related_packages("packageName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package])
    end
  end

  def test_list_version_numbers_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.packages.list_version_numbers("packageName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[String])
    end
  end
end
