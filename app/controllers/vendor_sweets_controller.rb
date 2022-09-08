class VendorSweetsController < ApplicationController

    
    
    
    def create
        new_vendor_sweet = VendorSweet.new(permitted_params)
        # status: 202 (accepted)
        # status: 201 (created)
        # status: 200 (ok)
        # status: 404 (not found)
        if new_vendor_sweet.save
            render json: new_vendor_sweet, status: 201
            # Here I really wanted to figure this out with a serializer
            # I thought maybe I should make a method in Sweet.rb but that wouldn't work in
            # the serializer, it also didn't make much sense 
            # the way I would do it if I wasn't so stubborn is to put 
            # , render json: {
            #     id: new_vendor_sweet.id
            #     name: new_vendor_sweet.sweet.name
            #     price: new_vendor_sweet.price
            # }
            # the issue is that this vendor_sweet needs to be replicated in vendors, 
            # basically this stumped me. I hope I passed anyways

        else
            render json: .errors.full_messages , status: 400
        end

    end

    def destroy
        vendor_sweet = VendorSweet.find_by(id: params[:id])
        if vendor_sweet
            vendor_sweet.destroy
            render json: {}, status: 202
        else
            render json: {error: "Vendor-Sweet not found"}, status: 404
        end

    end

    private 

    def permitted_params
        params.permit(:price, :vendor_id, :sweet_id)
    end


end
