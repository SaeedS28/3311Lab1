note
	description: "Summary description for {TEST_ARRAYED_CONTAINER}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	TEST_ARRAYED_CONTAINER

inherit
	ES_TEST

create
	make

feature -- Attributes
	imp_client : ARRAY[STRING]

feature--constructor
	make
	do

	end


feature --initialization
	initialization
	do

		comment("TEST 0: Intialization")
		create {} imp_client.make_empty
		imp_client("Saad",1)
	end


end
