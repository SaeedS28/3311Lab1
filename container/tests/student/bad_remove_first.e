note
	description: "This class implements the code for remove_first method in such a way that it violates the post condition"
	author: "Saad Saeed"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_REMOVE_FIRST

inherit
	ARRAYED_CONTAINER
		redefine
			remove_first
		end
create
	make

feature -- bad versions of the methods that throw a post-condition violation
	remove_first
	do
		Precursor
		imp[imp.count]:="WTF"	--this line assigns the last value of the array with WTF, thereby screwing up the answer
	end

end
