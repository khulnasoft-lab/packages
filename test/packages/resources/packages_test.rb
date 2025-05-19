# frozen_string_literal: true

require_relative "../test_helper"

class Packages::Test::Resources::PackagesTest < Packages::Test::ResourceTest
  def test_lookup
    skip("skipped: tests are disabled for the time being")

    response = @packages.packages.lookup

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::PackageWithRegistry])
    end
  end
end
