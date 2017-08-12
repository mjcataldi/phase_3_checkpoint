##################################################
##################################################
##########    DO NOT MODIFY THIS FILE   ##########
##################################################
##################################################

require 'rails_helper'

RSpec.describe SessionsController, type: :controller do

  let!(:user) {User.create(first_name: "Person", last_name: "Name", email: "a@b.com", password: "123456")}

  let(:valid_attributes) {
    {email: "a@b.com", password: "123456"}
  }

  let(:invalid_attributes) {
    {email: "", password: ""}
  }

  describe "GET #new" do
    it "renders the new template" do
      get :new
      expect(response).to render_template("new")
    end
  end

  describe "POST #create" do
    it "assigns user as @user with passed params" do
      post :create, params: valid_attributes
      expect(assigns(:user)).to eq(user)
    end

    context "with invalid params" do
      it "assigns the user as nil" do
        post :create, params: invalid_attributes
        expect(assigns(:user)).to be(nil)
      end

      it "re-renders the 'new' template" do
        post :create, params: invalid_attributes
        expect(response).to render_template("new")
      end
    end
  end

  describe "logout" do
    it "has a custom route" do
      assert_recognizes({controller: "sessions", action: "destroy"}, {path: "/logout", method: 'get'})
    end
  end
end
