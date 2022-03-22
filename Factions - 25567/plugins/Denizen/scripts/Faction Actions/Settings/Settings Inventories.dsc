faction_action_settings_inventory:
    type: inventory
    inventory: chest
    gui: true
    title: <&color[#1569EA]>Faction Settings
    slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [faction_action_settings_faction_name_item] [] [faction_action_settings_color_item] [] [faction_action_settings_permissions_item] [] []
        - [previous_page_item] [] [] [] [] [] [] [] []

faction_action_settings_color_change_inventory:
    type: inventory
    inventory: chest
    gui: true
    title: <&color[#1569EA]>Select New Faction Color!
    slots:
        - [red_dye[display_name=<dark_red>Red]] [orange_dye[display_name=<gold>Orange]] [yellow_dye[display_name=<yellow>Yellow]] [green_dye[display_name=<dark_green>Green]] [lime_dye[display_name=<green>Light Green]] [light_blue_dye[display_name=<aqua>Aqua]] [blue_dye[display_name=<blue>Blue]] [cyan_dye[display_name=<dark_blue>Dark Blue]] [magenta_dye[display_name=<light_purple>Light Purple]]
        - [] [] [] [purple_dye[display_name=<dark_purple>Purple]] [light_gray_dye[display_name=<gray>Gray]] [white_dye[display_name=<white>White]] [] [] []