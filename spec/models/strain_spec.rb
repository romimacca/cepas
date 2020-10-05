require 'rails_helper'

RSpec.describe Strain, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "Validates uniqueness of strain" do
    should validate_uniqueness_of(:name)
  end
  
  it "Is invalid without a name " do
    strain = Strain.new(name: nil)
    expect(strain).to be_invalid
  end

  it "Is invalid with a blank name" do
    strain = Strain.new(name: "")
    expect(strain).to be_invalid
  end

  it "Is valid with a name" do
    strain = Strain.new(name: "Carmenere")
    expect(strain).to be_valid
  end

end
