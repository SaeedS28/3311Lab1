note
	description: "Summary description for {BAD_ARRAYED_CONTAINER}."
	author: ""
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
		imp[imp.count]:="WTF"
	end

end
