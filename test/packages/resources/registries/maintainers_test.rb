# frozen_string_literal: true

require_relative "../../test_helper"

class Packages::Test::Resources::Registries::MaintainersTest < Packages::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.maintainers.retrieve("MaintainerLoginOrUUID", registry_name: "registryName")

    assert_pattern do
      response => Packages::Registries::Maintainer
    end

    assert_pattern do
      response => {
        created_at: Time,
        email: String | nil,
        html_url: String | nil,
        login: String | nil,
        name: String | nil,
        packages_count: Integer,
        packages_url: String,
        role: String | nil,
        total_downloads: Integer,
        updated_at: Time,
        url: String | nil,
        uuid: String
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.maintainers.list("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Maintainer])
    end
  end

  def test_list_packages_required_params
    skip("skipped: tests are disabled for the time being")

    response =
      @packages.registries.maintainers.list_packages("MaintainerLoginOrUUID", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package])
    end
  end
end
