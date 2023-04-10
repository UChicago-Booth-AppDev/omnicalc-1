class ApplicationController < ActionController::Base

def blank_square_form

  render({ :template => "calculation_templates/square_form.html.erb"})

end

def calculate_square

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

def blank_payment_form

  render({ :template => "calculation_templates/payment_form.html.erb"})

end

def calculate_payment

  @apr = params.fetch("user_apr").to_f
  @apr_perc = @apr / 100.0
  @apr_final_form = @apr.to_s(:percentage, {:precision => 4})
  @monthly_apr = @apr_perc / 12.0
  @num_years = params.fetch("user_years").to_i
  @num_months = @num_years * 12.0
  @principal = params.fetch("user_principal").to_i
  @principal_final_form = @principal.to_s(:currency, {:precision => 2})
  @payment_numerator = (@principal * @monthly_apr)
  @payment_denominator = 1 - ((1+@monthly_apr)**((-1)*@num_months))
  @payment = (@payment_numerator / @payment_denominator).to_s(:currency, {:precision => 2})

  render({ :template => "calculation_templates/payment_results.html.erb"})
end

end
