module Lanmao
  class Railtie < ::Rails::Railtie
    initializer "Lanmao.logger" do
      Lanmao.logger = Rails.logger
    end
  end
end
