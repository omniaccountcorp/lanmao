# coding: utf-8
require 'spec_helper'

RSpec.describe "资金冻结" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:user_no) { "I01" }
  let(:amount) { 0.1 }

  it "成功冻结" do
    res = client.freeze(request_no, user_no, amount)

    # ap res
    expect(res[:data][:status]).to eq "SUCCESS"
    expect(res[:result]).to eq('S')
  end
end
