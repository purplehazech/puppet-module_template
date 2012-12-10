require 'spec_helper'

describe 'module_template' do
  context "behave ok when called with no params" do
    it do
      should contain_class('module_template')
    end
  end
end
