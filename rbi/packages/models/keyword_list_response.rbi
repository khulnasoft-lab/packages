# typed: strong

module Packages
  module Models
    KeywordListResponse =
      T.let(
        Packages::Internal::Type::ArrayOf[Packages::Keyword],
        Packages::Internal::Type::Converter
      )
  end
end
