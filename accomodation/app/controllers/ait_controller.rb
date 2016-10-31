class AitController < ApplicationController
  layout "aitbanner"

  def dormroom
    @dormdetails = DormDetail.all
  end

end
