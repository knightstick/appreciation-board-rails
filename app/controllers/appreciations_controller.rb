class AppreciationsController < ApplicationController
  PERMITTED_PARAMS = %i[name body].freeze

  def create
    appreciation = Appreciation.new(appreciation_attributes)

    if appreciation.save
      render json: appreciation
    else
      render json: appreciation, serializer: ActiveModel::Serializer::ErrorSerializer
    end
  end

  private

  def appreciation_attributes
    ActiveModelSerializers::Deserialization.jsonapi_parse!(
      params, only: PERMITTED_PARAMS
    )
  end
end
