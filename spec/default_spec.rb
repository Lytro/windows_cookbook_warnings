require 'spec_helper'

describe 'windows_cookbook_warnings::default' do
  let(:chef_run) { runner.converge 'windows_cookbook_warnings::default' }

  it "includes the default java recipe" do
    expect(chef_run).to include_recipe 'windows'
  end

  it "needs a second spec so that it reloads constants" do
    expect(chef_run).to include_recipe 'windows'
  end
end
