def bubble_sort (arr)
	iter = arr.length - 1 
	sorting = false
	iter.times do
		arr.each_with_index do |l,i|
			comp = l <=> arr[i+1]
			if comp == 1
				hold = arr[i+1]
				arr[i+1] = l
				arr[i] = hold
				sorting = true
			end
		end
		if sorting == true
			sorting = false
		else
			return p arr
		end
	end
	p arr
end

def bubble_sort_by (arr, &block)
	iter = arr.length - 1 	
	sorting = false	
	if block_given?		
		iter.times do
			arr.each_with_index do |l,i|
				break if arr[i+1] == nil
				comp = yield arr[i],arr[i+1]				
				if comp < 0
					hold = arr[i+1]
					arr[i+1] = l
					arr[i] = hold
					sorting = true
				end
			end
			
			if sorting == true
				sorting = false
			else
				return p arr
			end
		end
	else
		bubble_sort(arr)
	end
	p arr
end

bubble_sort([3,2,1])
bubble_sort([1,2,3])
bubble_sort_by(["hi","hello","hey"]) do |left,right|
      right.length - left.length
   end