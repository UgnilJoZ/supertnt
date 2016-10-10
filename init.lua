minetest.register_node("supertnt:tnt_block", {
        description = S("TNT block"),
	drawtype = "airlike",
	tiles = {"tnt_top.png", "tnt_bottom.png", "tnt_block_side.png"},
        groups = {cracky=3,oddly_breakable_by_hand=3},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		for y = pos.y,pos.y+2 do
			for z = pos.z-1,pos.z+1 do
				for x = pos.x-1,pos.x+1 do
					minetest.set_node({x=x,z=z,y=y}, {name = "tnt:tnt"})
				end
			end
		end
	end
})

tnt.register_tnt({
	name = "supertnt:megatnt",
	description = "Mega TNT",
	radius = 21,
})

minetest.register_alias("megatnt", "supertnt:megatnt")
minetest.register_alias("tntblock", "supertnt:tnt_block")
