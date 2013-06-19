require 'spec_helper'

describe User do

 context 'associations' do
   it { should have_many(:user_comments).dependent(:destroy) }
   it { should have_many(:favorites).dependent(:destroy) }
   it { should have_many(:notifications).dependent(:destroy) }
   it { should have_one(:internship) }
 end

 context 'validation' do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:first_name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:password) }
      it { should validate_presence_of(:internship_authorization) }
  end
end