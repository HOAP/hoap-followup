class AdminController < ApplicationController
  before_filter :require_user

  def index
  end

  def export
    filename = "HOAP6M-#{Time.zone.now.strftime("%Y%m%d%H%M")}.csv"
    send_data(Participant.export_csv, type: 'text/csv', filename: filename)
  end
end
