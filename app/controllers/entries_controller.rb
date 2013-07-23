class EntriesController < ApplicationController
  def sign_in
    @name = params[:visitor_name]
    @entry = Entry.create({:name => @name}) unless @name.blank?

    @entries = Entry.all
  end
end
