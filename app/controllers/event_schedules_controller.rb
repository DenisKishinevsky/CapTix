class EventSchedulesController < ApplicationController
  # GET /event_schedules
  # GET /event_schedules.json
  def index
    @event_schedules = EventSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @event_schedules }
    end
  end

  # GET /event_schedules/1
  # GET /event_schedules/1.json
  def show
    @event_schedule = EventSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @event_schedule }
    end
  end

  # GET /event_schedules/new
  # GET /event_schedules/new.json
  def new
    @event_schedule = EventSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @event_schedule }
    end
  end

  # GET /event_schedules/1/edit
  def edit
    @event_schedule = EventSchedule.find(params[:id])
  end

  # POST /event_schedules
  # POST /event_schedules.json
  def create
    @event_schedule = EventSchedule.new(params[:event_schedule])

    respond_to do |format|
      if @event_schedule.save
        format.html { redirect_to @event_schedule, notice: 'Event schedule was successfully created.' }
        format.json { render json: @event_schedule, status: :created, location: @event_schedule }
      else
        format.html { render action: "new" }
        format.json { render json: @event_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /event_schedules/1
  # PUT /event_schedules/1.json
  def update
    @event_schedule = EventSchedule.find(params[:id])

    respond_to do |format|
      if @event_schedule.update_attributes(params[:event_schedule])
        format.html { redirect_to @event_schedule, notice: 'Event schedule was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_schedules/1
  # DELETE /event_schedules/1.json
  def destroy
    @event_schedule = EventSchedule.find(params[:id])
    @event_schedule.destroy

    respond_to do |format|
      format.html { redirect_to event_schedules_url }
      format.json { head :no_content }
    end
  end
end
