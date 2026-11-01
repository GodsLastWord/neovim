return {
    {
        "justinhj/battery.nvim",
        opts = {
            update_rate_seconds = 60,
            show_status_when_no_battery = false,
            show_plugged_icon = true,
            show_unplugged_icon = true,
            show_percent = true,
            vertical_icons = false,
            notify_on_low_battery = true,
            low_battery_threshold = 20,
            critical_battery_threshold = 10,
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            options = {
                globalstatus = true,
            },
            sections = {
                lualine_z = {
                    function()
                        return " " .. os.date("%R")
                    end,
                    function()
                        return require("battery").get_status_line()
                    end,
                    "location"
                },
            },
        },
    },
}
