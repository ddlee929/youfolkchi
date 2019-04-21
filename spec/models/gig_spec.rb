require 'rails_helper'

RSpec.describe Gig, type: :model do
  describe "Creation" do
    before do
      @gig = Gig.create(date: Date.today, location: "Subterranean", artists: "Tideshift, Dead Sun, and Manchester Orchestra")
    end

    it 'can be created' do
      expect(@gig).to be_valid
    end

      it 'cannot be created without a date and location and artists' do
        @gig.date = nil
        @gig.location = nil
        @gig.artists = nil
        expect(@gig).to_not be_valid
    end
  end
end
