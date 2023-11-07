require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'palenight',
  },
  sections = {
    lualine_a = {
      {
      	'filename',
	      path = 1,
      }
    }
  }
}
