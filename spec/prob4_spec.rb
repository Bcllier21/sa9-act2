require "prob4"

RSpec.describe BankAccount do
    let (:atm) { BankAccount.new }
    describe "#deposit" do
        it "increases the balance by the deposit amount" do
            atm.deposit(100)
            expect(atm.balance).to eq(100)
        end
    end

    describe "#withdraw" do
        it "decreases the balance by the withdrawal amount if funds are available" do
            atm.deposit(90)
            atm.withdraw(90)
            expect(atm.balance).to eq(0)
        end

        it "does not change the balance if insufficient funds" do
            atm.deposit(50)
            atm.withdraw(200)
            expect(atm.balance).to eq(50)
        end
    end

    describe "#balance" do
        it "returns the current balance" do
            expect(atm.balance).not_to be_nil
        end
    end
end