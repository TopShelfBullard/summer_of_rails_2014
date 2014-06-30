class ReturnProvider
  def initialize
  end

  def first_function_return
    1+1
    2+2
    3+3
  end

  def second_function_return
    a =1
    b = 2
    c = a + b
    d = 4
    c
  end

  def third_function_return
    a = 1
    b = 2
    return a
    c = a + b
  end

  def test_answer(function_return, answer)
    output = function_return == answer ? "#{answer}, is correct :)" : "Incorrect! What an idiot."
    puts output
  end
end

return_provider = ReturnProvider.new
return_provider.test_answer(return_provider.first_function_return, 6)
return_provider.test_answer(return_provider.second_function_return, 3)
return_provider.test_answer(return_provider.third_function_return, 1)