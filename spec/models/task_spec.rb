require "rails_helper"

describe Task, type: :model do
  describe "instance methods" do
    describe "#laundry?" do
      it "returns true when the title is laundry" do
        task = Task.create!(title: "laundry", description: "clean clothes")

        expect(task.laundry?).to be true
      end

      it "returns true when the description is laundry" do
        task = Task.create!(title: "Clean my clothes", description: "laundry")

        expect(task.laundry?).to be true
      end

      it "returns false when neither the description nor title is laundry" do
        task = Task.create!(title: "Wash car", description: "wash my car")

        expect(task.laundry?).to be false
      end

      it "returns true when the title contains the word laundry" do
        task = Task.create!(title: "Start laundry", description: "start a load")

        expect(task.laundry?).to be true
      end

      it "returns true when the description contains the word laundry" do
        task = Task.create!(title: "Wash clothes", description: "start laundry")

        expect(task.laundry?).to be true
      end

      # it "is case insensitive when checking if the title contains the word laundry" do
      #   task = Task.create!(title: "Start launDRY", description: "start a load")

      #   expect(task.laundry?).to be
      # end

      # it "is case insensitive when checking if the description contains the word laundry" do
      #   task = Task.create!(title: "Wash clothes", description: "start launDRY")

      #   expect(task.laundry?).to be
      # end
    end
  end
end
