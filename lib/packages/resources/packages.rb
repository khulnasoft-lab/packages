# frozen_string_literal: true

module Packages
  module Resources
    class Packages
      # lookup a package by repository URL, purl or ecosystem+name
      #
      # @overload lookup(ecosystem: nil, name: nil, order: nil, purl: nil, repository_url: nil, sort: nil, request_options: {})
      #
      # @param ecosystem [String] ecosystem name
      #
      # @param name [String] package name
      #
      # @param order [String] direction to sort results by
      #
      # @param purl [String] package URL
      #
      # @param repository_url [String] repository URL
      #
      # @param sort [String] field to sort results by
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::PackageWithRegistry>]
      #
      # @see Packages::Models::PackageLookupParams
      def lookup(params = {})
        parsed, options = Packages::PackageLookupParams.dump_request(params)
        @client.request(
          method: :get,
          path: "packages/lookup",
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::PackageWithRegistry],
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
