require 'spec_helper'

RSpec.describe "LogCurrentUser", type: :request do

  it "runs successfully" do
    get '/users'

    response.should be_success
  end

end
