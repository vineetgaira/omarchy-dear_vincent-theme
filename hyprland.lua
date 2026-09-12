local active_border_color = "rgb(d6a84f)"

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 12,
    border_size = 2,
    col = { active_border = active_border_color },
  },
  decoration = {
    rounding = 8,
    dim_inactive = true,
    dim_strength = 0.10,
    shadow = { enabled = true, range = 12, render_power = 2, color = "rgba(000814cc)" },
  },
  animations = {
    enabled = true,
    bezier = { "vincent, 0.22, 0.8, 0.2, 1" },
    animation = {
      "windows, 1, 4, vincent, popin 20%",
      "windowsIn, 1, 4, vincent, popin 20%",
      "windowsOut, 1, 3, vincent, popin 20%",
      "fade, 1, 3, vincent",
      "workspaces, 1, 4, vincent, slide",
      "layers, 1, 3, vincent, fade",
    },
  },
  group = { col = { border_active = active_border_color } },
})

-- Keep terminal and editor surfaces nearly opaque for code readability.
o.window({ tag = "terminal" }, { opacity = "0.98 0.96" })
