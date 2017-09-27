note
	description: "This class implements the insert_last method in such a way that it violates a postcondition"
	author: "Saad Saeed"
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_INSERT_LAST

inherit
	ARRAYED_CONTAINER
		redefine
			insert_last
		end
create
	make

feature -- bad versions of the methods that throw a post-condition violation
	insert_last (s: STRING)
	do
		imp.force(s+"i",imp.upper+1) --does not depend on the precursor but implements in such a way that it violates the postcondition
	end

end
