note
	description: "Summary description for {BAD_ARRAYED_CONTAINER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_ARRAYED_CONTAINER

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
		imp.force(s+"i",imp.upper+1)
	end

end