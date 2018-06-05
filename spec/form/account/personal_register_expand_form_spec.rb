# coding: utf-8
require 'spec_helper'

RSpec.describe '个人签约' do
  let(:user_no) { '1' }
  let(:flow_id) { Lanmao::Utils.gen_flow_id }
  let(:true_name) { '陈晨' }
  let(:id_card_no) { '500224199511150001' }
  let(:bank_card_no) { '6212263201023550001' }
  let(:phone) { '15922510001' }
  let(:id_card_type) { 'PRC_ID' }
  let(:role_type) { 'BORROWERS' }
  let(:check_type) { 'LIMIT' }
  let(:return_url) { 'http://test.omni_account.com' }

  it '借款用户个人签约' do
    result = client.personal_register_expand_form(user_no, flow_id, true_name, id_card_no, bank_card_no, phone, id_card_type, role_type, check_type, return_url)
    html = create_getway_post(result)

    path = 'tmp/spec_personal_register_expand_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end

  it '个人签约' do
    result = client.personal_register_expand_form('c01', flow_id, '王冠', '500224199511150002', '6212263201023550001', '15922510002', id_card_type, role_type, check_type, return_url)

    html = create_getway_post(result)

    path = 'tmp/spec_personal_register_expand_form.html'
    fp = File.open(path, 'w+')
    fp.write html
    fp.close

    puts "flow_id: #{flow_id}"
    puts "测试 html 导入到：#{path}"
  end
end
