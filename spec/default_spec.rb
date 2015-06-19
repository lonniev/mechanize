require 'chefspec'

describe 'mechanize::default' do
  
  let(:chef_run) do
    runner = ChefSpec::ChefRunner.new('platform' => 'windows', 'version'=> '12.04')
    runner.converge('mechanize::default')
  end
    
  it 'should include the mechanize recipe by default' do
    expect(chef_run).to include_recipe 'mechanize::default'
  end

end
