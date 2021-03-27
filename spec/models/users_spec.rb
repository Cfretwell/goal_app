require 'rails_helper'

RSpec.describe Users, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe "validations" do 
    it {should validate_presance_of(:email) }
    
    it {should validate_presance_of(:password_digest) }
    
    it {should validate_uniquness_of(:email) }
    
    it { should validate_presence_of(:session_token)}

    it { should validate_uniqueness_of(:session_token)}

  end

  describe "associations" do 
    it {should have_many(:goals)}
  
  end

  describe "class methods" do 

    describe "::find_by_credentials" do 

    end

  end

end
