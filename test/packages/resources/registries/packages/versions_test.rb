# frozen_string_literal: true

require_relative "../../../test_helper"

class Packages::Test::Resources::Registries::Packages::VersionsTest < Packages::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.packages.versions.retrieve(
        "versionNumber",
        registry_name: "registryName",
        package_name: "packageName"
      )

    assert_pattern do
      response => Packages::Models::Registries::Packages::VersionRetrieveResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        dependencies: ^(Packages::Internal::Type::ArrayOf[Packages::Dependency]),
        documentation_url: String | nil,
        download_url: String | nil,
        install_command: String | nil,
        integrity: String | nil,
        latest: Packages::Internal::Type::Boolean,
        licenses: String | nil,
        metadata: Packages::Internal::Type::Unknown | nil,
        number: String,
        published_at: String | nil,
        purl: String,
        registry_url: String | nil,
        related_tag: Packages::Internal::Type::Unknown,
        status: String | nil,
        updated_at: Time,
        version_url: String,
        id: Integer | nil
      }
    end
  end

  def test_list_required_params
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.packages.versions.list("packageName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Models::Registries::Packages::VersionListResponseItem])
    end
  end
end
