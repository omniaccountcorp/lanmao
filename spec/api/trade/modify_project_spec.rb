# coding: utf-8
require 'spec_helper'

RSpec.describe "变更标的" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:project_no) { "5b1a640a3c3286b81a000002" }
  let(:status) { "REPAYING" }

  it "更新同状态时，失败" do
    res = client.modify_project(request_no, project_no, status)

    # ap res
    expect(res[:data][:errorMessage]).to include "标的当前不能变更为:REPAYING"
    expect(res[:result]).to eq('P')
  end
end
