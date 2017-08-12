##################################################
##################################################
##########    DO NOT MODIFY THIS FILE   ##########
##################################################
##################################################

require 'rails_helper'

RSpec.describe AttendancesController, type: :controller do

  let!(:concert) {Concert.create(band: "Daft Punk", venue: "The Metro", date: "2017-09-09", start_time: "8:00 PM")}
  let!(:user) {User.create(first_name: "Person", last_name: "Name", email: "a@b.com", password: "123456")}

  describe "POST #create" do
    it "assigns the concert to be attended as @concert" do
      post :create, xhr: true, params: {concert_id: concert.id}, session: {user_id: user.id}
      expect(assigns(:concert)).to eq(concert)
    end

    it "associates the concert with the logged in user" do
      post :create, xhr: true, params: {concert_id: concert.id}, session: {user_id: user.id}
      expect(assigns(:concert).attendees).to include(user)
    end
  end

end
