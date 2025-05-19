# frozen_string_literal: true

require_relative "../test_helper"

class Packages::Test::Resources::DependenciesTest < Packages::Test::ResourceTest
  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.dependencies.list

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Dependency])
    end
  end
end
