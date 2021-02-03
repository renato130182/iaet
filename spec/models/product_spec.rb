require 'rails_helper'

RSpec.describe Product do
    let(:name) { "simple name" }  
    it {should belong_to (:restaurant)}
    it {should validate_presence_of :name}
end