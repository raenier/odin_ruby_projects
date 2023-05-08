def bubblesort(forsort = [])
  newarr = forsort
  unsorted = false
  (forsort.length-1).times do |index|
    if  newarr[index] > newarr[index + 1]
      #switch array values
      newarr[index], newarr[index + 1] = newarr[index + 1], newarr[index]
      unsorted = true # flag to track that array is still unsorted
    end
  end
  #run recursively until all are sorted
  bubblesort(newarr) if unsorted
  newarr
end

p bubblesort([0, -1,4,3, 100,78, -2,2,0,2,91,1])
