require 'rails_helper'

RSpec.describe Actor do
  describe 'relationships' do
    it {should belong_to :studio}
    it {should have_many :movies}
  end
end
