function LoadZeroColorscheme(color)
	color = color or "zero"
	vim.cmd.colorscheme(color)
end

return {
	LoadZeroColorscheme()
}
