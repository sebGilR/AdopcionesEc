require 'rails_helper'

RSpec.describe Pet, type: :model do
  subject { Pet.new(pet_type: "dog", size: "small", description: "A description here") } 

  it "is valid with valid details" do
    expect(subject).to be_valid
  end

  it "is not valid without a type" do
    subject.pet_type = nil
    expect(subject).to_not be_valid   
  end

  it "is not valid without a size" do
    subject.size = nil
    expect(subject).to_not be_valid 
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid 
  end
end
