require 'rails_helper'

RSpec.describe Client, type: :model do
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:business_name) }
  it { should validate_presence_of(:rfc) }
  it { should validate_presence_of(:id_direction) }
  it { should validate_presence_of(:cellphone) }
  it { should validate_presence_of(:telephone) }
  it { should validate_presence_of(:email) }
end
