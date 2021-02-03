require 'rails_helper'


RSpec.describe Restaurant do 
    let(:name) { "simple name" }   
    context 'Testing total of products' do
        
        it 'returns total of products for a specific restaurant' do
            r = Restaurant.create(name: 'Rest 1', address: 'end 1')

            product1 = Product.create(restaurant: r, name: 'p1', value:5.5)
            product2 = Product.create(restaurant: r, name: 'p2', value:10.5)

            expect(r.total_of_products).to eq 2
        end 
    end
end 