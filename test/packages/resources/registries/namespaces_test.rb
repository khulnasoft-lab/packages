# frozen_string_literal: true

require_relative "../../test_helper"

class Packages::Test::Resources::Registries::NamespacesTest < Packages::Test::ResourceTest
  def test_retrieve_required_params
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.namespaces.retrieve("namespaceName", registry_name: "registryName")

    assert_pattern do
      response => Packages::Registries::Namespace
    end

    assert_pattern do
      response => {
        name: String,
        packages_count: Integer,
        packages_url: String
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.namespaces.list("registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Namespace])
    end
  end

  def test_list_packages_required_params
    skip("skipped: tests are disabled for the time being")

    response = @packages.registries.namespaces.list_packages("namespaceName", registry_name: "registryName")

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package])
    end
  end
end
