class AitController < ApplicationController
  layout "aitbanner"

  def dormroom
    @dormdetails = Studenthousinginfo.where(status: 'Approved')
  end

end
