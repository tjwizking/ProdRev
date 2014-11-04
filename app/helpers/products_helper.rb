module ProductsHelper
  def review_class(r)
  	if r.review_type == 0 
      "alert alert-danger"
    elsif r.review_type == 1
      "alert alert-success"
    elsif r.review_type == 2
      "alert alert-warning"
    end
  end
end
