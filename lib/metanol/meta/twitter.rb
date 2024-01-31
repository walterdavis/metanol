# frozen_string_literal: true

module Metanol
  module Meta
    class Twitter < Base
      def self.render_current_url(url)
        return '' if url.blank?

        "<meta data-turbo-track=\"reload\" property=\"twitter:url\" content=\"#{url}\" />"
      end

      def self.render_current_domain(url)
        return '' if url.blank?

        "<meta data-turbo-track=\"reload\" property=\"twitter:domain\" content=\"#{url}\" />"
      end

      def name
        "twitter:#{@name}"
      end
    end
  end
end
