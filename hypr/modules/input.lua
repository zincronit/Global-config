---------------
---- INPUT ----
---------------

hl.config({
    input = {
        kb_layout  = "us,",
        -- kb_variant = ",dvorak",
        -- kb_model   = "",
        -- kb_options = "grp:alt_shift_toggle",
        -- kb_rules   = "",
        
        resolve_binds_by_sym = 1, 
        
        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 means no modification.

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.device{
    name       = "at-translated-set-2-keyboard",
    kb_layout  = "us,us",
    kb_variant = "dvorak,",
    kb_options = "ctrl:swapcaps",
    -- kb_options="grp:alt_shift_toggle", 
    
}

hl.device({
    name = "foostan-corne-v4",
    kb_layout = "us",
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

-- Example per-device config
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more
hl.device({
    name        = "epic-mouse-v1",
    sensitivity = -0.5,
})

