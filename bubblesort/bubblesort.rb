def bubblesort(forsort = [])
  newarr = forsort
  (forsort.length-1).times do |index|
    if  newarr[index] > newarr[index + 1]
      #switch array values
      newarr[index], newarr[index + 1] = newarr[index + 1], newarr[index]
    end
  end
  #run recursively until all are sorted
  bubblesort(newarr) unless newarr.each_cons(2).all?{|a, b| b >= a}
  newarr
end

p bubblesort([0, -1,4,3, 100,78, -2,2,0,2,91,1])
