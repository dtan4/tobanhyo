require 'spec_helper'

describe User do
  describe "#save" do
    context "with valid user" do
      let(:user) { build(:user) }

      it "should be saved" do
        expect(user.save).to be_true
        expect(user).to be_persisted
      end
    end

    context "with user without name" do
      let(:user) { build(:user_without_name) }

      it "should not be saved" do
        expect(user.save).to be_false
        expect(user).not_to be_persisted
      end
    end

    context "with user without email" do
      let(:user) { build(:user_without_email) }

      it "should not be saved" do
        expect(user.save).to be_false
        expect(user).not_to be_persisted
      end
    end
  end
end
