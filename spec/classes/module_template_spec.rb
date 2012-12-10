require 'spec_helper'

describe 'module_template' do

  context "when called with no params" do
    it "will behave ok" do
      should contain_class('module_template')
      should_not contain_notify('module_template is present')
      should_not contain_notify('module_template is absent')
    end
  end

  context "param ensure set to absent" do
    let :params do
      { :enable => 'absent' }
    end

    it "will not fail but emit a message" do
      should contain_class('module_template')
      should contain_notify('module_template is absent')
      # add more checks for disabling the module here!
    end
  end

  context "param absent set from hiera", :broken => true do
    # @todo check back to see if hiera test are fixed later
    include_context "hieradata"

    let :hiera_data do
      { :enable => 'absent' }
    end

    it "will emit a message" do
      should contain_notify('module_template is absent')
    end
  end

end
