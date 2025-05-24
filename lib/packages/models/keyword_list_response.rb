# frozen_string_literal: true

module Packages
  module Models
    # @type [Packages::Internal::Type::Converter]
    KeywordListResponse = Packages::Internal::Type::ArrayOf[-> { Packages::Keyword }]
  end
end
