require 'rails_helper'

RSpec.describe Actor do
  describe 'relationships' do
    it {should belong_to :studio}
  end
end