class MainController < ApplicationController
  def home
    @orgs = Org.all
    respond_to do |format|
      if !@orgs.blank?
        format.html { redirect_to orgs_url }
      else
        format.html { redirect_to new_org_url }
        format.json { render json: @org.errors, status: :unprocessable_entity }
      end
    end
  end
end
