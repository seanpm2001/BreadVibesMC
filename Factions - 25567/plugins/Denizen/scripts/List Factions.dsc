# List Factions Command
# Written by Breadcrumb
# Description:
#   Opens the inventory that lists all the factions that are currently existing.
list_factions_command:
    type: command
    name: listfactions
    usage: /listfactions
    aliases:
        - logfactions
        - factions
    description: Lists all the current factions in an inventory UI.
    script:
        - inventory open d:list_factions_command_list_inventory

list_factions_command_list_inventory:
    type: inventory
    inventory: chest
    gui: true
    title: List of All Factions
    procedural items:
        - define list <list[]>
        - if <proc[get_factions]> != null:
            - foreach <proc[get_factions].keys> as:f:
                - if <[f].proc[get_allies].is_empty>:
                    - define allies "No allies <element[<&ns>crying.].hex_rainbow>"
                - else:
                    - define allies <[f].proc[get_allies].separated_by[,]>
                - if <[f].proc[get_rivalries].is_empty>:
                    - define rivals "No rivals! :)"
                - else:
                    - define rivals <[f].proc[get_rivalries].separated_by[,]>
                - define lore "<list[<yellow>Owner: <player[<[f].proc[get_owner]>].name>|<yellow>Power: <[f].proc[get_power]>|<yellow>Allies: <[allies]>|<yellow>Rivals: <[rivals]>|<blue>Click to send a join request!]>"
                - define skull_skin <[f].proc[get_owner]>
                - define display <[f].proc[get_display_name]>

                - define item <item[player_head[display=<[display]>;lore=<[lore]>;skull_skin=<[skull_skin]>]]>
                - define list:->:<[item]>
        - else:
            - define list:->:<item[air]>
        - determine <[list]>
    slots:
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [] [] [] [] [] [] [] [] []
        - [previous_page_item] [air] [air] [air] [air] [air] [air] [air] [next_page_item]