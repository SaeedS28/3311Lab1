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
	imp_client : ARRAYED_CONTAINER

feature--constructor
	make
	do
		create imp_client.make
		add_boolean_case (agent test_insert_last)
	end


feature --initialization
	test_insert_last: BOOLEAN
	local
		a: STRING
	do
		comment("TEST 1: insert last")
		imp_client.insert_last("Saad")
		a:=imp_client.get_at(1)
		result:= a~"Saad"
		check result end
		imp_client.insert_last("Memes")
		a:=imp_client.get_at(2)
		result := a~"Memes"
	end


end
