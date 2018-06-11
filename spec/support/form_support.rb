# coding: utf-8

module FormSupport
  def create_getway_post(result)
    method = result[:form_method]
    data = result[:form_data]
    html = "<html><head><meta charset='utf-8'></head><body>"
    html += "<form id='xitouGateway' name='testGateway' action='#{method[:url]}' method='#{method[:method]}'>"

    data.each do |key, value|
      html += "<input type='hidden' name='#{key}' value='#{value}'/>"
    end

    html += "<input type='submit' value='submit'></form>"
    html += "</body></html>"

    html
  end
end
