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
	--imp_client : ARRAYED_CONTAINER

feature--constructor
	make
	do
		add_boolean_case (agent test_insert_last) --done
		add_boolean_case (agent test_count)
		add_boolean_case (agent test_insert_at)
	end


feature --initialization
	test_insert_last: BOOLEAN
	local
		a: STRING
		imp_client: ARRAYED_CONTAINER
	do	--Spaces screw it up
		comment("TEST 1: insert last")
		create imp_client.make
		imp_client.insert_last("Saad")
		a:=imp_client.get_at(1)
		result:= a~"Saad"
		check result end
		imp_client.insert_last("Memes")
		a:=imp_client.get_at(2)
		result := a~"Memes"
		check result end
		imp_client.insert_last("Octave")
		a:=imp_client.get_at(3)
		result:=a~"Octave"
		check result end
	end

	test_count: BOOLEAN
	local
		imp_client: ARRAYED_CONTAINER
	do	--Spaces screw it up
		comment("TEST 2: Test count")
		create imp_client.make
		result:=imp_client.count=0
		check result end
		imp_client.insert_last("Saad")
		result:=imp_client.count=1
		check result end
	end

	test_insert_at: BOOLEAN
	local
		a: STRING
		imp_client: ARRAYED_CONTAINER
	do	--Spaces screw it up
		comment("TEST 1: insert_at")
		create imp_client.make
		imp_client.insert_last("Saad")

		--actual test
		imp_client.insert_at(1,"Memes")
		a:=imp_client.get_at(1)
		result := a~"Memes"
		check result end
	end

end
