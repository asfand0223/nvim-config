local status_ok, presence = pcall(require, "presence")
if not status_ok then
	return
end

presence.setup {
    neovim_image_text = "Neovim",
    presence_log_level = "error",
    presence_editing_text = "Editing 󰄽 %s 󰄾",
    presence_file_explorer_text = "Browsing files",
    presence_reading_text = "Reading 󰄽 %s 󰄾",
    presence_workspace_text = "Working on 󰄽 %s 󰄾", 
}
