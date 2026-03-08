# Lazyvim no bullshit
Lazyvim has great defaults but is a bloated mess of bs.

## Reasons to use Lazyvim as base
- Removes integrated TUI apps for neovim natives where possible.
- Removes bullshit like flash.nvim -> you need to learn vim motions
- Adds neogit, harpoon, aerial
- Turn off diagnostics, inlay hints all bloated bs getting in the way of your code
- Turn of dashboard -> you dont need it


### Lazyvim-no-bs keeps
Most of the lazyvim settings to be turned back on if needed.

## Comparison to alternatives

| Distro | Rationale |
| ---- | ----- |
| Lunarvim | bloated bad default hotkeys | 
| Astro | Faster but not as widely used |
| Kickstart | Bad defaults - too difficult to support |
| roll your own | Learn lua and nvim but no support |
| Lazyvim-no-bs | Lazyvim base + remove bs + add better tools |


## Simple config
plugins/disable_bullshit.lua disables Lazyvim bullshit.

All added plugins in plugins in separate .lua files.

