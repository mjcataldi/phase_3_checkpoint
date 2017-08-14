RSpec.describe User, type: :model do


  describe "user" do
    let!(:user) {User.create(first_name: "Fred", last_name: "Flintstone", email: "dinoforever@flintstone.com")}

    it "stores an first name" do
      expect(user.first_name).to eq("Fred")
    end

    it "stores a last name" do
      expect(user.last_name).to eq("Flintstone")
    end

    it "stores an email" do
      expect(user.email).to eq("dinoforever@flintstone.com")
    end

    it "retrieves a full name via a virtual method" do
      expect(user.full_name).to eq("Fred Flintstone")
    end

  end

end
