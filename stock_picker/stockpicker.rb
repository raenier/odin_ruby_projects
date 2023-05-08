def stockpicker(stocks = [])
  result = {}
  stocks.each_with_index do |stocka, indexa|
    stocks.slice(indexa + 1, stocks.length).each_with_index do |stockb, indexb|
      result[(indexa + 1).to_s + (indexb + indexa + 2).to_s] = stockb - stocka
    end
  end
  result.max_by{|k, v| v}.first.split('').map(&:to_i)
end

p stockpicker([1,3,6,9,15,8,17,1,24])
