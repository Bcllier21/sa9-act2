require "prob2"

RSpec.describe TodoList do
    let(:td) { TodoList.new }
    describe "#add" do
        it "adds a todo to the list" do
            td.add(1)
            expect(td.todos).to include(1)
        end
    end

    describe "#remove" do
        it "removes a todo from the list" do
            td.remove(1)
            expect(td.todos).to be_empty
        end
    end

    describe "#todos" do
        it "returns all todos" do
            td.add(1)
            td.add(2)
            expect(td.todos).to eq([1, 2])
        end
    end
end