# frozen_string_literal: true

module Packages
  module Resources
    class Dependencies
      # list dependencies
      #
      # @overload list(after: nil, ecosystem: nil, kind: nil, optional: nil, package_id: nil, package_name: nil, page: nil, per_page: nil, requirements: nil, request_options: {})
      #
      # @param after [String] filter by id after given id
      #
      # @param ecosystem [String] ecosystem name
      #
      # @param kind [String] kind
      #
      # @param optional [Boolean] optional
      #
      # @param package_id [String] package id
      #
      # @param package_name [String] package name
      #
      # @param page [Integer] pagination page number
      #
      # @param per_page [Integer] Number of records to return
      #
      # @param requirements [String] requirements
      #
      # @param request_options [Packages::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Packages::Dependency>]
      #
      # @see Packages::Models::DependencyListParams
      def list(params = {})
        parsed, options = Packages::DependencyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "dependencies",
          query: parsed,
          model: Packages::Internal::Type::ArrayOf[Packages::Dependency],
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
