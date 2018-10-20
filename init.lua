
-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")


if minetest.get_modpath("food") then
    
    food.module("rujak",function()
        minetest.register_craftitem("food_extend:rujak", {
            description = S("Rujak"),
            inventory_image = "food_extend_rujak.png",
            on_use = food.item_eat(6),
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:rujak",
            recipe = {
                        {"farming:cucumber","group:food_orange","farming_plus:banana"},
                        {"farming:chili_pepper","moretrees:raw_coconut","group:food_carrot"},
                        {"","group:food_bowl",""}
                    }
        })
    end)

    food.module("baking_powder",function()
        minetest.register_craftitem("food_extend:baking_powder", {
            description = S("Baking Powder"),
            inventory_image = "food_extend_baking_powder.png",
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:baking_powder",
            recipe = {
                        {"group:food_salt","farming:cornstarch","group:food_sugar"},
                        {"","farming:mortar_pestle",""}
                    },
            replacements = {
                            {"farming:mortar_pestle", "farming:mortar_pestle"}
                           }
        })
    end)


    food.module("gingerbread_sam_raw",function()
        minetest.register_craftitem("food_extend:gingerbread_sam_raw", {
            description = S("Gingerbread Sam (raw)"),
            inventory_image = "food_extend_gingerbread_sam_raw.png",
            --on_use = food.item_eat(6),
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:gingerbread_sam_raw 5",
            recipe = {
                        {"bees:bottle_honey","dye:red","bees:bottle_honey"},
                        {"group:food_sugar","farming:flour","cucina_vegana:sunflower_seeds"},
                        {"dye:green","group:food_egg","food_extend:baking_powder"}
                    }
        })
    end)


    food.module("gingerbread_sam",function()
        minetest.register_craftitem("food_extend:gingerbread_sam", {
            description = S("Gingerbread Sam"),
            inventory_image = "food_extend_gingerbread_sam.png",
            on_use = food.item_eat(4),
            groups = {food = 1}
        })
    end)

    minetest.register_craft({
        type = "cooking",
        cooktime = 15,
        output = "food_extend:gingerbread_sam",
        recipe = "food_extend:gingerbread_sam_raw"
    })
    
    print("[MOD] " .. minetest.get_current_modname() .. "successfully loaded.")
    
else -- if(minetest.get_modpath
           
    print("[MOD] " .. minetest.get_current_modname() .. "not loaded. Missing mod food!")

end
          
    
