require 'spec_helper'

describe PagesController do

  describe "GET 'test'" do
    it "returns http success" do
      get 'test'
      response.should be_success
    end
  end

end
