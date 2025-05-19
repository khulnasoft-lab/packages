# frozen_string_literal: true

require_relative "../test_helper"

class Packages::Test::Resources::KeywordsTest < Packages::Test::ResourceTest
  def test_retrieve
    skip("skipped: tests are disabled for the time being")

    response = @packages.keywords.retrieve("keywordName")

    assert_pattern do
      response => Packages::Models::KeywordRetrieveResponse
    end

    assert_pattern do
      response => {
        name: String,
        packages: ^(Packages::Internal::Type::ArrayOf[Packages::Registries::Package]),
        packages_count: Integer,
        packages_url: String,
        related_keywords: ^(Packages::Internal::Type::ArrayOf[Packages::Keyword])
      }
    end
  end

  def test_list
    skip("skipped: tests are disabled for the time being")

    response = @packages.keywords.list

    assert_pattern do
      response => ^(Packages::Internal::Type::ArrayOf[Packages::Keyword])
    end
  end
end
