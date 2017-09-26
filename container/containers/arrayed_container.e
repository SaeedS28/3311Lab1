note
	description: "A linear container implemented via an array."
	author: "Jackie and You"
	date: "$Date$"
	revision: "$Revision$"

class
	ARRAYED_CONTAINER

create
	make

feature {NONE} -- Implementation of container via an array

	imp : ARRAY[STRING]

feature -- Constructors

	make
			-- Initialize an empty container.
		do
			-- This implementation is correct, just given to you.
			create {ARRAY[STRING]} imp.make_empty
		ensure
			empty_container: imp.count=0
		end


feature -- Commands

	assign_at (i: INTEGER; s: STRING)
			-- Change the value at position 'i' to 's'.
		require
			valid_index:  valid_index(i)
		do
			imp [i] := s
			-- Uncomment this to produce a wrong implementation
--			if i > 1 then
--				imp [1] := s
--			end
		ensure
			size_unchanged: imp.count = (old imp.twin).count
			item_assigned: imp [i] ~ s
			others_unchanged:
				across
					1 |..| imp.count as j
				all
					j.item /= i implies imp [j.item] ~ (old imp.twin) [j.item]
				end
		end

	insert_at (i: INTEGER; s: STRING)
			-- Insert value 's' into index 'i'.
		require
			valid_index: valid_index(i)
		do
			imp.force (s, i)
		ensure
			size_changed: imp.count = (old imp.twin).count+1
			inserted_at_i:imp[i]~s
			left_half_the_same:
			across
				imp.lower |..| (i-1) as j
			all
				imp[j.item]~(old imp.twin)[j.item]
			end
			right_half_the_same:
			across
				i |..| (old imp.twin).upper as j
			all
				imp[j.item+1]~(old imp.twin)[j.item]
			end
		end

	delete_at (i: INTEGER)
			-- Delete element stored at index 'i'.

		require
			valid_index: valid_index(i)
		local
			str_ahead : STRING
		do
			if i=imp.count	then
				imp.remove_tail (1)
			else
				across
					i |..| (imp.upper-1) as j
				loop
					str_ahead :=imp[j.item+1]
					imp.put (str_ahead,j.item)
				end
				imp.remove_tail (1)
			end
		ensure
			size_changed: imp.count=(old imp.twin).count-1
			left_half_the_same:
			across
				imp.lower |..| (i-1) as j
			all
				imp[j.item]~(old imp.twin)[j.item]
			end
			right_half_the_same:
			across
				i |..| (old imp.twin).upper as j
			all
				imp[j.item-1]~(old imp.twin)[j.item]
			end
		end

	insert_last (s: STRING)
			-- Insert 's' as the last element of the container.
		local
			temp_str : STRING
			temp_str2 : STRING
		do --swaps the last and 2nd last entries because force at end pushes the element out by 1
			imp.force(s,imp.upper+1)
--			imp.force (s,imp.count)
--			temp_str:=imp[imp.count]
--			temp_str2:=imp[imp.count-1]
--			imp.put (temp_str, imp.count)
--			imp.put (temp_str2, imp.count-1)
		ensure
			size_changed:imp.count=(old imp.twin).count+1
			last_inserted:imp[imp.upper]~s
			others_unchanged:
			across
				imp.lower |..| (old imp.twin).upper as j
			all
				imp[j.item] ~ (old imp.twin)[j.item]
			end
		end

	remove_first
			-- Remove first element from the container.
		require
			not_empty: count>0
--		local
--			i: INTEGER
--			s: STRING

		do
			imp.remove_head(1)
		ensure
			size_changed: imp.count=(old imp.count)-1
			others_unchanged:
			across
			(old imp.twin).lower |..| imp.upper as j
			all
				imp[j.item]~(old imp.twin)[j.item+1]
			end
		end

feature -- Queries

	count: INTEGER -- Your task
	 do
	 	Result:= imp.upper-imp.lower+1
	 ensure
	 	Result= imp.upper-imp.lower+1
	 end


	valid_index (i: INTEGER): BOOLEAN
			-- Is 'i' a valid index of current container?
		do
			Result := (i>=imp.lower) and (i<=imp.upper)
		ensure
			size_unchanged:  imp.count= (old imp.twin).count
			result_correct: Result = (i>=imp.lower) and (i<=imp.upper)
			no_elements_changed:
			across
			old imp.lower |..| (old imp.twin).upper as j
			all
				imp[j.item] ~ (old imp.twin)[j.item]
			end
		end

	get_at (i: INTEGER): STRING
			-- Return the element stored at index 'i'.

		require
			valid_index: valid_index(i)
		do
			Result:=imp[i]
		ensure
			size_unchanged: imp.count= (old imp.twin).count
			result_correct: Result =  imp[i]
			no_elements_changed:
			across
			old imp.lower |..| (old imp.twin).upper as j
			all
				imp[j.item] ~ (old imp.twin)[j.item]
			end
		end

invariant
	-- Size of container and size of implementation array always match.
	consistency: imp.count = count
end
