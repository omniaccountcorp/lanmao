# coding: utf-8
require 'spec_helper'

RSpec.describe "变更标的" do
  let(:request_no) { Lanmao::Utils.gen_flow_id }
  let(:project_no) { "123456" }
  let(:status) { "REPAYING" }

  it "失败" do
    res = client.modify_project(request_no, project_no, status)

    expect(res[:result]).not_to eq('S')
  end
end
