class EventTypesController < ApplicationController
  load_and_authorize_resource

  # GET /event_types
  def index
    @event_types = EventType.order(:name)
  end

  # GET /event_types/1
  def show
  end

  # GET /event_types/new
  def new
    @event_type = EventType.new
  end

  # GET /event_types/1/edit
  def edit
  end

  # POST /event_types
  def create
    @event_type = EventType.new(event_type_params)

    if @event_type.save
      redirect_to @event_type, notice: 'Event type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /event_types/1
  def update
    if @event_type.update(event_type_params)
      redirect_to @event_type, notice: 'Event type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /event_types/1
  def destroy
    @event_type.destroy
    redirect_to event_types_url, notice: 'Event type was successfully destroyed.'
  end

  private
    # Only allow a list of trusted parameters through.
    def event_type_params
      params.require(:event_type).permit(:name)
    end
end
