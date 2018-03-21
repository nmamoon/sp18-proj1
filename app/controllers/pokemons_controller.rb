class PokemonsController < ApplicationController

	def capture
        pokemon = Pokemon.find(params[:id])
        pokemon.trainer_id = current_trainer().id
        pokemon.save
        redirect_to root_path
    end

    def damage
    	@pokemon = Pokemon.find(params[:id])
    	@pokemon.health -= 10
    	if @pokemon.health <= 0
      		@pokemon.destroy
    	else
     	 @pokemon.save
    	end
    	redirect_to trainer_path(current_trainer)
  	end


  	def create
        trainer_id = current_trainer().id
        @pokemon = Pokemon.new(pokemon_params)

        @pokemon.level =  1
        @pokemon.health = 100

        @pokemon.trainer_id = trainer_id
        if @pokemon.save
            redirect_to trainer_path(id: current_trainer().id)
        else
            flash[:error] = @pokemon.errors.full_messages.to_sentence
            redirect_to new_pokemon_path
        end
    end



    def update
        @pokemon = Pokemon.find(params[:id])
        
        end
        redirect_to trainer_path(id: current_trainer().id)
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:name, :index)

    end
end
