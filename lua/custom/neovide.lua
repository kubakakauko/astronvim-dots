if vim.g.neovide then
  -- Linespace for better readability
  vim.opt.linespace = 0

  -- Scale factor for UI
  vim.g.neovide_scale_factor = 1.1

  -- Cursor effect
  vim.g.neovide_cursor_vfx_mode = "pixiedust"

  -- Padding
  vim.g.neovide_padding_top = 0
  vim.g.neovide_padding_bottom = 0
  vim.g.neovide_padding_right = 0
  vim.g.neovide_padding_left = 0

  -- Transparency and Blur
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_window_blurred = true
  vim.g.neovide_floating_blur_amount_x = 2.0
  vim.g.neovide_floating_blur_amount_y = 2.0

  -- Shadow for floating windows
  vim.g.neovide_floating_shadow = true
  vim.g.neovide_floating_z_height = 10
  vim.g.neovide_light_angle_degrees = 45
  vim.g.neovide_light_radius = 5

  -- Animation timings
  vim.g.neovide_position_animation_length = 0.0
  vim.g.neovide_scroll_animation_length = 0.1
  vim.g.neovide_cursor_animation_length = 0.05
  vim.g.neovide_cursor_trail_size = 0.5
  vim.g.neovide_scroll_animation_far_lines = 1

  -- Refresh rate for smoothness
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_smooth_blink = true

  -- Enhanced Pixiedust effect
  vim.g.neovide_cursor_vfx_particle_lifetime = 1.2
  vim.g.neovide_cursor_vfx_particle_density = 15.0
  vim.g.neovide_cursor_vfx_particle_speed = 20.0
  vim.g.neovide_cursor_vfx_particle_phase = 1.5
  vim.g.neovide_cursor_vfx_particle_curl = 1.0

  -- vim.g.neovide_input_ime = false
  vim.g.neovide_input_macos_option_key_is_meta = "both"
end
