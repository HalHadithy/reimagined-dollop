class VendorsController < ApplicationController

    def index
        vendors = Vendor.all
        render json: vendors, status: 202
    end

    def show
        vendor = Vendor.find_by(id: params[:id])
        if vendor
            render json: vendor , serializer: VendorWithVendorSweetSerializer, status: 202
            # render json: vendor, status: 202, 
        else
            render json: {error: "Vendor not found"}, status: 404
        end
    end

end
