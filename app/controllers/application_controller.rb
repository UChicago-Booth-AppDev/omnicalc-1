class ApplicationController < ActionController::Base

def blank_square_form

  render({ :template => "calculation_templates/square_form.html.erb"})

end

def calculate_square

  # params = {elephant=>"42"}
  @num = params.fetch("elephant").to_f
  @square_of_num = @num**2
  render({ :template => "calculation_templates/square_results.html.erb"})
  
end



def blank_random_form

  render({ :template => "calculation_templates/random_form.html.erb"})
  
end

def calculate_random

  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @rand_num = rand(@min..@max)

  render({ :template => "calculation_templates/random_results.html.erb"})
  
end

def blank_square_root_form

  render({ :template => "calculation_templates/square_root_form.html.erb"})

end

def calculate_square_root

  @num = params.fetch("user_number").to_f
  @sqr_root = @num ** 0.5

  render({ :template => "calculation_templates/square_root_results.html.erb"})
end


end
