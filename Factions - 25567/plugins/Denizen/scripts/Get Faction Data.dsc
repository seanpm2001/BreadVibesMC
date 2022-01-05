# Get Display Name Procedure
# Written by Breadcrumb
# Description:
#   Gets the display name of a faction provided by the ID. If the faction does not exist it will return null.
get_display_name:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine "<server.flag[factions.<[id]>.display name]>"
        - else:
            - determine null

# Get Name Procedure
# Written by Breadcrumb
# Description:
#   Gets the name of a faction provided by the ID. If the faction does not exist it will return null.
get_name:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.name]>
        - else:
            - determine null

# Get Settings Procedure
# Written by Breadcrumb
# Description:
#   Gets the settings for a faction provided by the ID. If the faction does not exist it will return null.
get_settings:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.settings]>
        - else:
            - determine null

# Get Owner Procedure
# Written by Breadcrumb
# Description:
#   Gets the onwer of a faction provided by the ID. If the faction does not exist it will return null.
get_owner:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.owner]>
        - else:
            - determine null

# Get Members Procedure
# Written by Breadcrumb
# Description:
#   Gets the members of a faction provided by the ID. If the faction does not exist it will return null.
get_members:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.members]>
        - else:
            - determine null

# Get Rivalries Procedure
# Written by Breadcrumb
# Description:
#   Gets the rivalries of a faction provided by the ID. If the faction does not exist it will return null.
get_rivalries:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.rivalries]>
        - else:
            - determine null

# Get Allies Procedure
# Written by Breadcrumb
# Description:
#   Gets the allies of a faction provided by the ID. If the faction does not exist it will return null.
get_allies:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.allies]>
        - else:
            - determine null

# Get Power Procedure
# Written by Breadcrumb
# Description:
#   Gets the power of a faction provided by the ID. If the faction does not exist it will return null.
get_power:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.power]>
        - else:
            - determine null

# Get Claims Procedure
# Written by Breadcrumb
# Description:
#   Gets the claims of a faction provided by the ID. If the faction does not exist it will return null.
get_claims:
    type: procedure
    definitions: id
    script:
        - if <server.flag[factions].exists>:
            - determine <server.flag[factions.<[id]>.claims]>
        - else:
            - determine null

# get_teleport_coords:
#     type: procedure
#     definitions: id
#     script:
#         - determine "<server.flag[factions.<[id]>.teleport coords]>"

# Get Factions Procedure
# Written by Breadcrumb
# Description:
#   Gets all of the factions. Will return null if no factions exist.
get_factions:
    type: procedure
    script:
        - if <server.flag[factions].exists>:
            - determine "<server.flag[factions].exclude[all claims]>"
        - else:
            - determine null

# Get All Claims Procedure
# Written by Breadcrumb
# Description:
#   Gets all claimed chunks known to the server. Will return null if no chunks are claimed.
get_all_claims:
    type: procedure
    script:
        - if <server.flag[factions].exists>:
            - determine "<server.flag[factions.all claims]>"
        - else:
            - determine null

# Get Player Faction Procedure
# Written by Breadcrumb
# Description:
#   Get's the player's faction.
get_player_faction:
    type: procedure
    definitions: player
    script:
        - determine <[player].flag[faction]>