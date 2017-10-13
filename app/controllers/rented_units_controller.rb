class RentedUnitsController < InheritedResources::Base

  private

    def rented_unit_params
      params.require(:rented_unit).permit(:unit_no, :unit_model, :price, :bedrooms, :bathrooms, :half_baths, :square_footage, :leased, :appointment_id)
    end
end

