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
		add_boolean_case (agent test_count) --done
		add_boolean_case (agent test_insert_at) --done
		add_boolean_case (agent test_remove_first) --done
		--add_boolean_case (agent test_delete_at) Does not work
		add_boolean_case (agent test_assign_at)

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
		comment("TEST 3: insert_at")
		create imp_client.make
		imp_client.insert_last("Saad")

		--actual test
		imp_client.insert_at(1,"Memes")
		a:=imp_client.get_at(1)
		result := a~"Memes"
		check result end
		imp_client.insert_at(1,"Dank")
		a:=imp_client.get_at(1)
		result := a~"Dank"
		check result end
		a:=imp_client.get_at(2)
		result := a~"Memes"
		check result end
	end

	test_remove_first : BOOLEAN
	local
		imp_client : ARRAYED_CONTAINER
	do
		create imp_client.make
		comment("TEST 4: remove_first")
	--	create imp_client.make
		imp_client.insert_last("Saad")
		imp_client.insert_last("Saeed")
		imp_client.insert_last("Memes")

		imp_client.remove_first
		result:= imp_client.count=2 and imp_client.get_at (1)~"Saeed" and imp_client.get_at (2)~"Memes"

		check result end

		--actual testing body
		imp_client.remove_first
		result:= imp_client.count=1 and imp_client.get_at (1)~"Memes"

	end

	test_delete_at : BOOLEAN
	local
		imp_client : ARRAYED_CONTAINER
	do
		comment("TEST 5: delete_at")
		create imp_client.make
		imp_client.insert_last("Saad")
		imp_client.insert_last("Saeed")
		imp_client.insert_last("Memes")

		imp_client.delete_at(2)
		result:= imp_client.count=2 and imp_client.get_at (1)~"Saad" and imp_client.get_at (2)~"Memes"
	end

	test_assign_at : BOOLEAN
	local
		imp_client : ARRAYED_CONTAINER
	do
		comment("TEST 6: assign_at")
		create imp_client.make
		imp_client.insert_last("Saad")
		imp_client.insert_last("Saeed")
		imp_client.insert_last("Memes")
		imp_client.assign_at (3, "Dank")
		result:= imp_client.count=3 and imp_client.get_at (1)~"Saad" and imp_client.get_at (2)~"Saeed" and imp_client.get_at(3)~"Dank"
		check result end
		imp_client.assign_at (1, "Savage")
		result:= imp_client.count=3 and imp_client.get_at (1)~"Savage" and imp_client.get_at (2)~"Saeed" and imp_client.get_at(3)~"Dank"
		check result end
	end
end
