
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
                      },
            replacements = {
                            {"bees:bottle_honey", "vessels:glass_bottle 2"}
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
                        {"group:food_honey","dye:red","group:food_honey"},
                        {"group:food_sugar","farming:flour","cucina_vegana:sunflower_seeds"},
                        {"dye:green","group:food_egg","food_extend:baking_powder"}
                      },
            replacements = {
                            {"group:food_honey", "vessels:glass_bottle"}
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

    food.module("tofufruitcreme",function()
        minetest.register_craftitem("food_extend:tofufruitcreme", {
            description = S("Tofu-Fruit-Creme"),
            inventory_image = "food_extend_tofufruitcreme.png",
            on_use = food.item_eat(3),
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:tofufruitcreme",
            recipe = {
                        {"farming_plus:banana","cucina_vegana:tofu","default:apple"},
                        {"","group:food_bowl",""}
                    }
        })
    end)

    food.module("rice_grapes_plate_raw",function()
        minetest.register_craftitem("food_extend:rice_grapes_plate_raw", {
            description = S("Rice-Grapes-Plate (raw)"),
            inventory_image = "food_extend_rice_grapes_plate_raw.png",
            --on_use = food.item_eat(6),
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:rice_grapes_plate_raw",
            recipe = {
                        {"bees:bottle_honey","farming:grapes"},
                        {"group:food_salt","cucina_vegana:bowl_rice"},
                        {"group:food_meat","cucina_vegana:plate"}
                    },
            replacements = {
                            {"bees:bottle_honey", "vessels:glass_bottle"},
                            {"cucina_vegana:bowl_rice", "cucina_vegana:bowl"}
                           }
        })
    end)

    food.module("rice_grapes_plate_raw",function()
    minetest.register_craftitem("food_extend:rice_grapes_plate_raw", {
        description = S("Rice-Grapes-Plate (raw)"),
        inventory_image = "food_extend_rice_grapes_plate_raw.png",
        --on_use = food.item_eat(6),
        groups = {food = 1}
    })
    food.craft({
        output = "food_extend:rice_grapes_plate_raw",
        recipe = {
                    {"group:food_honey","farming:grapes"},
                    {"group:food_salt","cucina_vegana:bowl_rice"},
                    {"group:food_meat","cucina_vegana:plate"}
                },
        replacements = {
                        {"group:food_honey", "vessels:glass_bottle"},
                        {"cucina_vegana:bowl_rice", "cucina_vegana:bowl"}
                        }
        })
    end)

    food.module("rice_grapes_plate",function()
        minetest.register_craftitem("food_extend:rice_grapes_plate", {
            description = S("Rice-Grapes-Plate"),
            inventory_image = "food_extend_rice_grapes_plate.png",
            on_use = food.item_eat(6),
            groups = {food = 1}
        })
    end)

    minetest.register_craft({
        type = "cooking",
        cooktime = 17,
        output = "food_extend:rice_grapes_plate",
        recipe = "food_extend:rice_grapes_plate_raw"
    })

    food.module("fruitcoleslaw",function()
        minetest.register_craftitem("food_extend:fruitcoleslaw", {
            description = S("Coleslaw with Fruits"),
            inventory_image = "food_extend_fruitcoleslaw.png",
            on_use = food.item_eat(5),
            groups = {food = 1}
        })
        food.craft({
            output = "food_extend:fruitcoleslaw",
            recipe = {
                        {"default:apple","cucina_vegana:kohlrabi"},
                        {"group:food_orange","cucina_vegana:parsley"},
                        {"cucina_vegana:soy_milk","group:food_bowl"}
                    },
            replacements = {
                            {"cucina_vegana:soy_milk", "vessels:drinking_glass"}
                           }
        })
    end)
    
    print("[MOD] " .. minetest.get_current_modname() .. "successfully loaded.")
    
else -- if(minetest.get_modpath
           
    print("[MOD] " .. minetest.get_current_modname() .. "not loaded. Missing mod food!")

end
          
    
