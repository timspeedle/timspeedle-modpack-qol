-- Thanks QOL by Moral1ty for the change_setting implementation
local setting_types = { "bool-setting", "color-setting" }
local function change_setting(setting_name, setting_value)
    for _, setting_type in pairs(setting_types) do
        if data.raw[setting_type][setting_name] then
            data.raw[setting_type][setting_name].default_value = setting_value
        end
    end
end

change_setting("thicker-lines-copper", false)
change_setting("thicker-lines-shadow", false)
change_setting("bnl-color-disabled", { r = 0.5, g = 0.5, b = 0.5 })
change_setting("bnl-color-insufficient_input", { r = 0.33, g = 0, b = 1 })
change_setting("bnl-color-low_power", { r = 1, g = 0, b = 1 })
change_setting("bnl-color-no_minable_resources", { r = 0.33, g = 0, b = 1 })
change_setting("bnl-color-no_power", { r = 1, g = 0.5, b = 0 })
