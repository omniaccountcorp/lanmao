# coding: utf-8
require 'spec_helper'

RSpec.describe "取消债权出让" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:no) { "123" }

  it "失败" do
    res = client.cancel_debenture_sale(request_no, no)

    # ap res
    expect(res[:data]["errorMessage"]).to include"债权出让订单不存在"
    expect(res[:result]).not_to eq('S')
  end
end
