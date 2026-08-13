-----------------------
---- LOOK AND FEEL ----
-----------------------

hl.config({
    general = {
        gaps_in  = 5,
        gaps_out = 10,

        border_size = 1,
    
        col = {
            active_border   = { colors = {"rgba(A7C080ff)", "rgba(83C092ff)", "rgba(A7C080ff)"}, angle = 45 },
            inactive_border = "rgba(3C4841ff)",
        },

        resize_on_border = false,
        allow_tearing = false,
    },

    decoration = {
        rounding       = 10,
        rounding_power = 2,

        active_opacity   = 1.2,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = true,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },

        blur = {
            enabled         = true,
            size            = 5,
            passes          = 4,
            ignore_opacity  = false,
            xray            = false,
        },
    },

    animations = {
        enabled = true,
    },
})
