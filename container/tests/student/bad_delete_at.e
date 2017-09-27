note
	description: "This class implements the delete_at method in such a way that it violates the postcondition"
	author: "Saad Saeed"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_DELETE_AT

inherit
	ARRAYED_CONTAINER
		redefine
			delete_at
		end
create
	make

feature -- bad versions of the methods that throw a post-condition violation
	delete_at (i: INTEGER)
	do
		Precursor (i)
		imp[imp.count]:="WTF"	--The line of code that violates the test condition
	end

end
