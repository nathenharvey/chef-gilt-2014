require 'serverspec'
set :backend, :exec

describe 'apache' do
  it "is awesome" do
    expect(true).to eq true
  end
  
  it "is installed" do
    expect(package "httpd").to be_installed
  end

  it "is running"

  it "is responding to http requests"

  it "is displaying the proper home page"

  it "is running on the default port"
end





