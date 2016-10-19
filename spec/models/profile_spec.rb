require 'rails_helper'

RSpec.describe Profile, type: :model do
#  pending "add some examples to (or delete) #{__FILE__}"
#--- validation testing ---
  describe "validations" do
    it "is invalid without a first name" do
      profile = Profile.new(first_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:first_name)
    end

    it "is invalid without a last name" do
      profile = Profile.new(last_name: "")
      profile.valid?
      expect(profile.errors).to have_key(:first_name)
    end

    it "is invalid without a bio" do
      profile = Profile.new(bio: "")
      profile.valid?
      expect(profile.errors).to have_key(:bio)
    end
  end
#--- end of validation testing ---

end
