require 'spec_helper'

describe "<%= @config[:cookbook_name] %>::default" do


  context 'if the server is windows ' do
    let(:chef_run) {
      ChefSpec::ServerRunner.new do |node|
        node.automatic['platform'] = 'windows'
        node.automatic['hostname'] = 'TRSTLPRTSTAPV99'
      end.converge(described_recipe)
    }


    #  it "installs bacon slicer" do
    #    expect(chef_run).to install_package "bacon-slicer"
    #  end

    #  it "Sets the default sandwich construction" do
    #    expect(chef_run.node["sandwich"]["bread"]).to eq "rye sourdough"
    #    expect(chef_run.node["sandwich"]["filling"]).to eq [ :bacon, :lettuce, :tomato, :mayo ]
    #  end

    #  it "Creates a sandwich configuration" do
    #    expect(chef_run).to create_file "/etc/sandwich.d/breakfast.conf"
    #  end

    #  it "It should cut 20 slices of bacon" do
    #    chef_run.should execute_command 'slice -n 20 --thickness 2 bacon'
    #  end

    #  it "Allows access to the secret sandwich sauce for chefs only" do
    #    chef


  end
end
