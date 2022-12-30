local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
  [[                                                      ]],
  [[   _____ _                 _   __      ___            ]],
  [[  / ____(_)               | |  \ \    / (_)           ]],
  [[ | (___  _ _ __ ___  _ __ | | __\ \  / / _ _ __ ___   ]],
  [[	\___ \| | '_ ` _ \| '_ \| |/ _ \ \/ / | | '_ ` _ \]],
  [[  ____) | | | | | | | |_) | |  __/\  /  | | | | | | |]],
  [[ |_____/|_|_| |_| |_| .__/|_|\___| \/   |_|_| |_| |_| ]],
  [[					  | |                              ]],
  [[					  |_|                              ]],
  
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e $MYVIMRC <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
	return "Made With Love By Akarsh Barar"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
