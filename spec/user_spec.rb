require 'rails_helper'

describe User do
  it { should have_many :posts }
  it { should validate_presence_of :name }
end
