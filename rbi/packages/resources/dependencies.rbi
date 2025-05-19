# typed: strong

module Packages
  module Resources
    class Dependencies
      # list dependencies
      sig do
        params(
          after: String,
          ecosystem: String,
          kind: String,
          optional: T::Boolean,
          package_id: String,
          package_name: String,
          page: Integer,
          per_page: Integer,
          requirements: String,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[Packages::Dependency])
      end
      def list(
        # filter by id after given id
        after: nil,
        # ecosystem name
        ecosystem: nil,
        # kind
        kind: nil,
        # optional
        optional: nil,
        # package id
        package_id: nil,
        # package name
        package_name: nil,
        # pagination page number
        page: nil,
        # Number of records to return
        per_page: nil,
        # requirements
        requirements: nil,
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
