# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
    def index
      @emails = User.emails_of_all_users
      @items = Item.all
    end

    def update
      # TODO: Flash messages not showing on update
      @item = Item.find(params[:id])
      if @item.update(update_discount)
        respond_to do |format|
          format.html {
            flash[:success] = "L'item a été mis à jour !"
            redirect_to administration_items_path
          }
          format.js
        end
      else
        flash[:error] = "Problème, essayez encore !"
        redirect_to administration_items_path
      end
    end

    private

    def update_discount
      new_discount_percentage = item_params[:discount_percentage].to_i

      if new_discount_percentage.zero?
        { has_discount: false, discount_percentage: new_discount_percentage }
      else
        { has_discount: true, discount_percentage: new_discount_percentage }
      end
    end

    def item_params
      params.require(:item).permit(:id, :discount_percentage)
    end
  end
end
