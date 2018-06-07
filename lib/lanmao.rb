# coding: utf-8
require "json"
require "openssl"
require "base64"
require 'macaddr'
require 'byebug'
require 'logger'
require 'bigdecimal'
require 'bigdecimal/util'
require 'rest-client'

require "lanmao/version"

require "lanmao/version"
require "lanmao/utils"
require "lanmao/extensions"
require "lanmao/sign/rsa"
require "lanmao/http/request"
require "lanmao/http/response"


# 自动加载所有 api
Dir["#{File.dirname(__FILE__)}/lanmao/api/**/*.rb"].each { |file| require file }
# 自动加载所有 form
Dir["#{File.dirname(__FILE__)}/lanmao/form/**/*.rb"].each { |file| require file }
# 自动加载所有 http error code
Dir["#{File.dirname(__FILE__)}/lanmao/http/error_code/**/*.rb"].each { |file| require file }

module Lanmao
  module Form
  end
end

require "lanmao/client"

module Lanmao

  class << self
    def logger
      @logger ||= default_logger
    end

    def default_logger
      _logger = Logger.new(STDOUT)
      _logger.level = Logger::INFO
      _logger
    end

    def logger=(log)
      @logger = (log ? log : Logger.new('/dev/null'))
    end
  end

end

require 'lanmao/railtie' if defined?(::Rails)
