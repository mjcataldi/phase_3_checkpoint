##################################################
##################################################
##########    DO NOT MODIFY THIS FILE   ##########
##################################################
##################################################

require 'rails_helper'

RSpec.describe ConcertsController, type: :controller do

  let!(:concert) {Concert.create(band: "Daft Punk", venue: "The Metro", date: "2017-09-09", start_time: "8:00 PM")}

  describe "GET #index" do
    it "assigns all concerts as @concerts" do
      get :index
      expect(assigns(:concerts)).to eq([concert])
    end
  end

  describe "GET #show" do
    it "assigns the requested concert as @concert" do
      get :show, params: {id: concert.to_param}
      expect(assigns(:concert)).to eq(concert)
    end
  end

end
