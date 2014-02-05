class ScavengerHuntItemsController < ApplicationController

  # put /scavenger_hunt_items/:id/complete
  def complete
    item = ScavengerHuntItem.find_by_scavenger_hunt_id params[:id]
    saved = ( params[:complete] ? item.complete_item : item.uncomplete_item )
    respond_to do |format|
      format.json do
        if saved
          verb = (params[:complete] ? "completed" : "uncompleted")
          result = { success: "#{verb} item", id: params[:id] }
        else
          result = { error: item.errors.messages, id: params[:id] }
        end
        render :json => results
      end
    end
  end

end