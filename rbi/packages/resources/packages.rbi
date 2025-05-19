# typed: strong

module Packages
  module Resources
    class Packages
      # lookup a package by repository URL, purl or ecosystem+name
      sig do
        params(
          ecosystem: String,
          name: String,
          order: String,
          purl: String,
          repository_url: String,
          sort: String,
          request_options: Packages::RequestOptions::OrHash
        ).returns(T::Array[Packages::PackageWithRegistry])
      end
      def lookup(
        # ecosystem name
        ecosystem: nil,
        # package name
        name: nil,
        # direction to sort results by
        order: nil,
        # package URL
        purl: nil,
        # repository URL
        repository_url: nil,
        # field to sort results by
        sort: nil,
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
