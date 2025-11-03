function LoadDeboruColorscheme(color)
	color = color or "deboru"
	vim.cmd.colorscheme(color)
end

return {
	LoadDeboruColorscheme()
}
