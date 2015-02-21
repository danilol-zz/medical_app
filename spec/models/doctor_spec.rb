require 'rails_helper'

RSpec.describe Doctor, :type => :model do

  describe 'attribute validations' do
    subject { FactoryGirl.build(:doctor)  }

    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:email) }
    it { expect(subject).to validate_presence_of(:crm_number) }
  end
end
