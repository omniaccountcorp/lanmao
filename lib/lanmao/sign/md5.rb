# coding: utf-8
module Lanmao
  module Sign
    module MD5

      def self.sign(content, key)
        md5 = Digest::MD5.new
        md5 << (content + key)
        md5.hexdigest
      end

    end
  end
end
