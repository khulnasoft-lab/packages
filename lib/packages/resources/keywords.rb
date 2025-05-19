# frozen_string_literal: true

module Packages
  module Resources
    class Keywords
      # get a keyword by name
      #
      # @overload retrieve(keyword_name, page: nil, per_page: nil, request_options: {})
      #
      # @param keyword_name [String] name of keyword
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Packages::Models::KeywordRetrieveResponse]
      #
      # @see Packages::Models::KeywordRetrieveParams
      def retrieve(keyword_name, params = {})
        parsed, options = Packages::KeywordRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["keywords/%1$s", keyword_name],
          query: parsed,
          model: Packages::Models::KeywordRetrieveResponse,
          options: options
        )
      end

      # list keywords
      #
      # @overload list(page: nil, per_page: nil, request_options: {})
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::Keyword>]
      #
      # @see Packages::Models::KeywordListParams
      def list(params = {})
        parsed, options = Packages::KeywordListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "keywords",
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::Keyword],
          options: options
        )
      end

      # @api private
      #
      # @param client [Packages::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
