class IngredientsController < ApiController


  def index
    puts 'got to index of ingredients'
    @ingredients = Ingredient.select("id, description").all
    render json: @ingredients.to_json
  end

  def show
    puts 'got to show'
    @ingredients = Ingredient.find(params[:id])
    render json: @ingredients.to_json
  end


  def destroy
    puts 'got to destroy'
    @ingredients = Ingredient.find(params[:id])
    @ingredients.destroy
    render json: {message: 'got deleted'}, status: :ok
  end


  def ingredients_description
    @ingredients_descrip = Ingredient.select("description").all
    render json: @ingredients_descrip.to_json
  end

end
