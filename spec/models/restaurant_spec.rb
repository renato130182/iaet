require 'rails_helper'


RSpec.describe Restaurant do 
    let(:name) { "simple name" }  

    it{should have_many(:products)}
     
    context 'Testing total of products' do                    
        #Inserção automatizada da dados para teste
        let(:restaurant){FactoryBot.create(:restaurant)}
        let(:total) {rand(10)}

        before do
            (1..total).each do |item|
                FactoryBot.create(:product, restaurant: restaurant)
            end
        end
        it 'returns total of products for a specific restaurant' do
            #inserção manual dos dados para teste
            # restaurant = Restaurant.create(name: 'Rest 1', address: 'end 1')

            # product1 = Product.create(restaurant: r, name: 'p1', value:5.5)
            # product2 = Product.create(restaurant: r, name: 'p2', value:10.5)
            expect(restaurant.total_of_products).to eq total
        end 
    end
end 