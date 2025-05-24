# frozen_string_literal: true

require_relative "../test_helper"

class Packages::Test::Resources::RegistriesTest < Packages::Test::ResourceTest
  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.retrieve("registryName")

    assert_pattern do
      response => Packages::Registry
    end

    assert_pattern do
      response => {
        created_at: Time,
        default: Packages::Internal::Type::Boolean,
        downloads: Integer,
        ecosystem: String,
        github: String | nil,
        icon_url: String,
        keywords_count: Integer,
        maintainers_count: Integer,
        maintainers_url: String,
        metadata: Packages::Internal::Type::Unknown | nil,
        name: String,
        namespaces_count: Integer,
        packages_count: Integer,
        packages_url: String,
        purl_type: String,
        updated_at: Time,
        url: String,
        versions_count: Integer | nil
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.list

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registry])
    end
  end

  def test_list_package_names
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.list_package_names("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[String])
    end
  end

  def test_list_recent_versions
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.list_recent_versions("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Models::RegistryListRecentVersionsResponseItem])
    end
  end

  def test_lookup_package
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.lookup_package("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::PackageWithRegistry])
    end
  end
end
