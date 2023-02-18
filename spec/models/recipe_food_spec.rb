require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'create recipe_food instance' do
    subject do
      User.create(name: 'test', email: 'john@example.com', password: '654321')
      food = Food.new(name: 'Idriss', measurement_unit: '7', price: 17, quantity: 1, user_id: 1, created_at: Time.now,
                      updated_at: Time.now)
      food.save
      RecipeFood.new(quantity: 1, recipe_id: 1, food_id: 2, created_at: Time.now, updated_at: Time.now)
    end
  end
end
