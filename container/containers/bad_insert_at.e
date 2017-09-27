note
	description: "Summary description for {BAD_ARRAYED_CONTAINER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	BAD_INSERT_AT

inherit
	ARRAYED_CONTAINER
		redefine
			 insert_at
		end
create
	make

feature -- bad versions of the methods that throw a post-condition violation
	insert_at(i: INTEGER; s:STRING)
	do
		--imp.force (s+"i",i)
		Precursor (i,s)
		imp[i]:=s+"n"
	end
end
