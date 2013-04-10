require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Grape::API do

  it "added combined-routes" do
    Grape::API.should respond_to :combined_routes
  end

  it "added add_swagger_documentation" do
    Grape::API.should respond_to :add_swagger_documentation
  end



end
