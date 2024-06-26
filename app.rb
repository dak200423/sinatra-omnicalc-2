require "sinatra"
require "sinatra/reloader"

get("/") do
  redirect("/add")
end

get("/add") do
  erb(:add_form)
end

get("/wizard_add") do
  @first_num = params.fetch("first_number").to_f
  @second_num = params.fetch("second_number").to_f

  @result = @first_num + @second_num
  erb(:add_result)
end

get("/subtract") do
  erb(:sub_form)
end

get("/wizard_subtract") do
  @first_num = params.fetch("first_number_sub").to_f
  @second_num = params.fetch("second_number_sub").to_f
  @result_sub = @second_num - @first_num

  erb(:sub_result)
end

get("/multiply") do
  erb(:mult_form)
end

get("/wizard_multiply") do
  @first_num = params.fetch("first_number_mult").to_f
  @second_num = params.fetch("second_number_mult").to_f
  @result_mult = @second_num * @first_num

  erb(:mult_result)
end

get("/divide") do
  erb(:div_form)
end

get("/wizard_divide") do
  @first_num = params.fetch("first_num_div").to_f
  @second_num = params.fetch("second_num_div").to_f
  @result_div = @first_num / @second_num
  
  erb(:div_result)
end
