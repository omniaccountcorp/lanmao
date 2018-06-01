# coding: utf-8

require 'yaml'

module ClientSupport
  def client
    config = YAML.load_file(File.join(__dir__, 'config/config.yml'))

    config = Lanmao::Utils.symbolize_keys(config)

    @client ||= Lanmao::Client.new(config)
  end
end
