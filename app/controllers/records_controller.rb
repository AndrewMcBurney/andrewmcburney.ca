# frozen_string_literal: true

class RecordsController < ApplicationController
  before_action :authenticate
  before_action :set_record, only: %i(show edit update destroy)

  # GET /records
  def index
    @records = Record.all
  end

  # GET /records/1
  def show() end

  # GET /records/new
  def new
    @record = Record.new
  end

  # GET /records/1/edit
  def edit() end

  # POST /records
  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to @record, notice: "Record was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /records/1
  def update
    if @record.update(record_params)
      redirect_to @record, notice: "Record was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /records/1
  def destroy
    @record.destroy
    redirect_to records_url, notice: "Record was successfully destroyed."
  end

  private

  def set_record
    @record = Record.find(params[:id])
  end

  def record_params
    params
      .require(:record)
      .permit(:title, :subtitle, :heading, :date, :image_path, :bullet_ids)
  end
end
