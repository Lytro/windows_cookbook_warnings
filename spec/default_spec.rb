require 'chefspec'

describe 'windows_cookbook_warnings::default' do
  let(:chef_run) do
    # This loads both the current cookbook and all of the cookbooks in the cookbooks/ dir which contains the windows cookbook
    this_cookbook = File.expand_path("..", Dir.pwd)
    windows_cookbook = "#{File.expand_path(Dir.pwd)}/cookbooks"
    cookbook_paths = [this_cookbook, windows_cookbook]

    ChefSpec::ChefRunner.new(cookbook_path: cookbook_paths, platform: 'ubuntu', version: '10.04').converge 'windows_cookbook_warnings::default'
  end

  it "includes the default windows recipe" do
    expect(chef_run).to include_recipe 'windows'
  end

  it "needs a second spec so that it reloads constants" do
    expect(chef_run).to include_recipe 'windows'
  end
end
