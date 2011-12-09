require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact")
    end
  end

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "About")
    end
  end
  
  describe "GET 'game'" do
    it "returns http success" do
      get 'game'
      response.should be_success
    end

    it "should have the right title" do
      get 'game'
      response.should have_selector("title", :content => "Game List")
    end
  end
  
  describe "GET 'develpoer'" do
    it "returns http success" do
      get 'developer'
      response.should be_success
    end

    it "should have the right title" do
      get 'developer'
      response.should have_selector("title", :content => "Developer Team List")
    end
  end
  
  describe "GET 'publisher'" do
    it "returns http success" do
      get 'publisher'
      response.should be_success
    end

    it "should have the right title" do
      get 'publisher'
      response.should have_selector("title", :content => "Publisher List")
    end
  end
  
  describe "GET 'platform'" do
    it "returns http success" do
      get 'platform'
      response.should be_success
    end

    it "should have the right title" do
      get 'platform'
      response.should have_selector("title", :content => "Platform List")
    end
  end
  
  describe "GET 'feedback'" do
    it "returns http success" do
      get 'feedback'
      response.should be_success
    end

    it "should have the right title" do
      get 'feedback'
      response.should have_selector("title", :content => "Feedback")
    end
  end
  
  describe "GET 'registry'" do
    it "returns http success" do
      get 'registry'
      response.should be_success
    end

    it "should have the right title" do
      get 'registry'
      response.should have_selector("title", :content => "Registration")
    end
  end
  
  describe "GET 'forgot'" do
    it "returns http success" do
      get 'forgot'
      response.should be_success
    end

    it "should have the right title" do
      get 'forgot'
      response.should have_selector("title", :content => "Forgot password")
    end
  end
  
  describe "GET 'term'" do
    it "returns http success" do
      get 'term'
      response.should be_success
    end

    it "should have the right title" do
      get 'term'
      response.should have_selector("title", :content => "Terms of Service Privacy Statement")
    end
  end
end