# coding: utf-8
module Lanmao
  module Sign
    module RSA

      #签名
      def self.sign(content, private_key)
        sign = private_key.sign("sha1", content.force_encoding("utf-8"))
        signature = Base64.encode64(sign)
        signature = signature.delete("\n").delete("\r")
      end

      ## 验签
      def self.verify(data, config)  ##如何从data里分离出原始数据和签名数据
        if data.headers[:sign]
          sign = Base64.decode64(data.headers[:sign])
          digester = OpenSSL::Digest::SHA1.new
          config[:public_key].verify(digester, sign, data.body)
        else
          true
        end
      end # verify

    end
  end
end
