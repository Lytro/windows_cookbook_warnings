require 'chefspec'

def runner
  # This is loads both the current cookbook and all of the cookbooks in the cookbooks/ dir which contains the windows cookbook
  cookbook_paths = %W(#{File.expand_path("..", Dir.pwd)} #{File.expand_path(Dir.pwd)}/cookbooks)

  ChefSpec::ChefRunner.new(cookbook_path: cookbook_paths, platform: 'ubuntu', version: '10.04')
end

describe 'windows_cookbook_warnings::default' do
  let(:chef_run) { runner.converge 'windows_cookbook_warnings::default' }

  it "includes the default java recipe" do
    expect(chef_run).to include_recipe 'windows'
  end

  it "needs a second spec so that it reloads constants" do
    expect(chef_run).to include_recipe 'windows'
  end
end
