require 'rails_helper'

RSpec.describe Actor do
  describe 'relationships' do
    it {should belong_to :studio}
    it {should have_many :movies}
  end

  describe "class methods" do
    describe "::order_by_age" do
      it "orders actors by age, descending" do
        studio1 = Studio.create!(name: "Big Movie Studio", location: "Hollywood")

        actor1 = studio1.actors.create!(name: "Vigo Mortison", age: 40)
        actor2 = studio1.actors.create!(name: "Jennifer Lopez", age: 60)
        actor3 = studio1.actors.create!(name: "Pete Davidson", age: 31)
        actor4 = studio1.actors.create!(name: "Chris Pratt", age: 36)
        expect(Actor.order_by_age).to eq([actor2, actor1, actor4, actor3])
      end
    end
  end
end
