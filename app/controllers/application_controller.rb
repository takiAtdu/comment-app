class ApplicationController < ActionController::Base
  include SessionsHelper

  def create_tempfile(file)      
    tempfile = Tempfile.open(["temp", ".pdf"])
    tempfile.binmode
    tempfile.write(file)
    tempfile.rewind

    return tempfile
  end
end
