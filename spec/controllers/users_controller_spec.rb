##################################################
##################################################
##########    DO NOT MODIFY THIS FILE   ##########
##################################################
##################################################

require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:valid_attributes) {
    {first_name: "Person", last_name: "Name", email: "a@b.com", password: "123456"}
  }

  let(:invalid_attributes) {
    {first_name: "", last_name: "", email: "", password: ""}
  }

  describe "GET #new" do
    it "assigns an empty user as @user" do
      get :new
      expect(assigns(:user)).to be_a(User)
    end
  end

  describe "POST #create" do
    it "assigns user as @user with passed params" do
      post :create, params: {user: valid_attributes}
      expect(assigns(:user)).to eq(User.last)
    end

    context "with invalid params" do
      it "assigns the user as @user" do
        post :create, params: {user: invalid_attributes}
        expect(assigns(:user)).to be_a(User)
      end

      it "re-renders the 'edit' template" do
        post :create, params: {user: invalid_attributes}
        expect(response).to render_template("new")
      end
    end
  end
end
