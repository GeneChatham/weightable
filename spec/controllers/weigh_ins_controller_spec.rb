require 'spec_helper'

describe WeighInsController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show'
      response.should be_success
    end
  end


  describe "GET 'new'" do
    it "returns http success" do
      get 'new'

  describe "GET 'create'" do
    it "returns http success" do
      get 'create'

      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "returns http success" do
      get 'edit'
      response.should be_success
    end
  end

<<<<<<< HEAD
  describe "GET 'create'" do
    it "returns http success" do
      get 'create'
      response.should be_success
    end
  end

=======
>>>>>>> 376adfcbb3630b76ebec198b1e1fac5500916016
  describe "GET 'update'" do
    it "returns http success" do
      get 'update'
      response.should be_success
    end
  end

  describe "GET 'destroy'" do
    it "returns http success" do
      get 'destroy'
      response.should be_success
    end
  end

end
