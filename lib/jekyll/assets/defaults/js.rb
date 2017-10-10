# Frozen-string-literal: true
# Copyright: 2012 - 2017 - MIT License
# Encoding: utf-8

module Jekyll
  module Assets
    module Plugins
      class JSDefaults < Liquid::Default
        types "application/javascript", "text/javascript"
        static type: "text/javascript"

        def set_src
          src = @asset.digest_path
          src = @env.prefix_path(src)
          @args[:src] = src
        end

        def set_integrity
          @args[:integrity] = @asset.integrity
          unless @args.key?(:crossorigin)
            @args[:crossorigin] = "anonymous"
          end
        end
      end
    end
  end
end
