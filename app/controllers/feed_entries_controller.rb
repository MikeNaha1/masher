class FeedEntriesController < ApplicationController
  def index
  	@entries = FeedEntry.all
  end

  
end
