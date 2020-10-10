module Api
  module V1
    class PetsController < ApplicationController
      protect_from_forgery: false
      def index
        airlines = Pet.all

        render json: PetSerializer.new(airlines).serialized_json
      end

      def show
        pet = Pet.find(params[:id])

        render json: PetSerializer.new(pet).serialized_json
      end

      def create
        pet = Pet.new(pet_params)

        if pet.save
          render json: PetSerializer.new(pet).serialized_json
        else
          render json: { error: pet.errors.messages}, status: 422
        end
      end

      def update
        pet = Pet.find(params[:id])

        if pet.update(pet_params)
          render json: PetSerializer.new(pet).serialized_json
        else
          render json: { error: pet.errors.messages}, status: 422
        end
      end

      def destroy
        pet = Pet.find(params[:id])

        if pet.destroy
          head :no_content
        else
          render json: { error: pet.errors.messages}, status: 422
        end
      end

      private

      def pet_params
        params.require(:pet).permit(:pet_type, :size, :description)
      end
    end
  end
end