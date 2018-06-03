# coding: utf-8
module Lanmao
  module Sign
    module RSA

      def self.sign(content, private_key)
        sign = private_key.sign('sha1', content.force_encoding("utf-8"))
        signature = Base64.encode64(sign)
        signature = signature.delete("\n").delete("\r")
      end

    end
  end
end
