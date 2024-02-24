require "prob1"

RSpec.describe User do
    let (:use) {User.new("Brian")}
    describe "#log_in" do
        it "logs the user in" do
            use.log_in
            expect(use.logged_in).to be true
        end
    end

    describe "#log_out" do
        it "logs the user out" do
            use.log_out
            expect(use.logged_in).to be false
        end
    end
    describe "#username" do
        it "returns the correct username" do
            expect(use.username).to eq("Brian")
        end
    end
end