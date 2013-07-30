require 'rubygems'
require 'rspec'
require_relative 'person'

describe Person do
  context "when a name is provided" do
    let(:person) { Person.new "Matt", "Buck" }
    # The text inside the string can be anything. Convention is
    # using '.' for class methods and '#' for instance methods.
    describe ".initialize" do
      it "creates a new person with a first and last name" do
        expect(person.first_name).to eq("Matt")
        expect(person.last_name).to eq("Buck")
      end
    end

    describe "#full_name" do
      it "returns the full name of the person" do
        expect(person.full_name).to eq("Matt Buck")
      end
    end

    describe "#reverse_name" do
      it "returns the full name of the person in reverse" do
        expect(person.reverse_name).to eq("kcuB ttaM")
      end
    end
  end

  context "when a name is not provided" do
    let(:person) { Person.new }

    describe ".initialize" do
      it "creates a new person without a first or last name" do
        expect(person.first_name).to be_nil
        expect(person.last_name).to be_nil
      end
    end

    describe "#full_name" do
      it "returns nil" do
        expect(person.full_name).to be_nil
      end
    end

    describe "#reverse_name" do
      it "returns nil" do
        expect(person.reverse_name).to be_nil
      end
    end
  end

  context "when only a first or last name is provided" do
    let(:person) { Person.new "Matt" }

    describe ".initialize" do
      it "creates a new person with the provided name" do
        expect(person.first_name).to eq("Matt")
      end
    end

    describe "#full_name" do
      it "returns the provided name of the person" do
        expect(person.full_name).to eq("Matt")
      end
    end

    describe "#reverse_name" do
      it "returns the provided name of the person in reverse" do
        expect(person.reverse_name).to eq("ttaM")
      end
    end
  end

end