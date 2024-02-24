require "prob3"

RSpec.describe StringWrapper do
    let (:sw) {StringWrapper.new("Bruhruga")}
    describe "#reverse" do
        it "reverses the string" do
            expect(sw.reverse).not_to eq(sw)
        end
    end
    describe "#upcase" do
        it "converts the string to uppercase" do
            expect(sw.upcase).not_to eq(sw)
        end
    end
    describe "#downcase" do
        it "converts the string to lowercase" do
            expect(sw.downcase).not_to eq(sw)
        end
    end
end