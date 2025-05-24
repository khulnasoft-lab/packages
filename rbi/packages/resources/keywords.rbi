# typed: strong

module Packages
  module Resources
    class Keywords
      # get a keyword by name
      sig do
        params(
          keyword_name: String,
          page: Integer,
          per_page: Integer,
          request_options: Packages::RequestOptions::OrHash
        ).returns(Packages::Models::KeywordRetrieveResponse)
      end
      def retrieve(
        # name of keyword
        keyword_name,
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        request_options: {}
      )
      end

      # list keywords
      sig do
        params(
          page: Integer,
          per_page: Integer,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[Packages::Keyword])
      end
      def list(
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Packages::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
