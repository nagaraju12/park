class ProductsController < ApplicationController
	def index
	if params[:category].blank?
@products=Product.all.order("created_at ASC")

else
@category_id = Category.find_by(:name=>params[:category]).id
@products = Product.where(category_id: @category_id).order("created_at DESC")
end

	#	@products= Product.search(params[:search])
	end

	def new
    @product = Product.new
1.times{@product.images.build}

end

def create
    @product = Product.new(product_params)
 1.times{@product.images.build} if @product.images.blank?
 if @product.save
  redirect_to products_path
    flash[:notice] = "Successfully created product."
else
  render :new
  end
end
	 def show
	 	@product= Product.find(params[:id])
 
	 end

	 def edit
	 	@product= Product.find(params[:id])
	 end

	 def update
	 	@product= Product.find(params[:id])
	 	if @product.update(product_params)
	 		redirect_to products_path
	 		  flash[:notice] = "Successfully updated product."
	 	else
	 		render "edit"
	 	end
	 end

	 def destroy
	 	@product= Product.find(params[:id])
	 	@product.destroy
	 	redirect_to products_path
	 	  flash[:notice] = "Successfully destroy product."
	 end
def listing
    	@product= Product.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
def overview
	@products= Product.all
end

 def warranty_policy
 	@products= Product.all
 end

def client
	@products= Product.all
end
def aboutus
	@products= Product.all
end
	 private

	 def product_params
	 	params.require(:product).permit!
	 end
end
