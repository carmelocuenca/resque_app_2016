class BackgroundJobsController < ApplicationController
  def index
    (1..10).each do |i|
      puts "Adding to queue job #{i}"
      Resque.enqueue(ResqueJob, i) # RescueJob es el nombre del worker

      # simulate some time between requests
      sleep 0.2
    end
  end
end
