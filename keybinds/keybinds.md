## NVIM: Custom keybinds with space as leader & modal keybinds for easy motions

##### All related configs on [here](https://github.com/mrs4ndman/setup)

- #### (assuming Space is leader in neovim)
	
	- Leader + Leader = Source current file
	- Leader + b = Base binding for--
	    - Leader + b + n = Next buffer
	    - Leader + b + p = Previous buffer
	    - Leader + b + c = Buffer close / delete from list
        - Leader + b + d = Force buffer close / deletion
	
    - Leader + c + t = Treesitter context toggle
    - Leader + c + x = Make the current file executable (chmod +x)
	- Leader + e = Ex (Nvim Integrated Explorer)
    - Leader + f + m + l = Cellular automaton effect keybind

 
## Modal custom keybinds (not global)

- ### NORMAL:
	
	- J = append line below to current one
	- Q = Manually unbound in config (do not need it)
    - Leader + p / d: In visual / normal mode, paste and delete without picking the text into paste buffer
    - Ctrl + s = Substitutor
	
- ### INSERT:
	
	- Ctrl + c = Escape (i know, right?)

- ### VISUAL:
	
	- J \& K: Move selection completely up or down inside the buffer


- ### cokeline plugin [ .config/nvim/after/plugin/cokeline.lua ]
	
	- leader + c + n = focus on next buffer in the cokeline
	 
	- leader + c + p = focus on previous buffer in the cokeline
	 
	- leader + c + s + n = switch current buffer with the next buffer in the cokeline
	 
	- leader + c + s + p = switch current buffer with the previous buffer in the cokeline
	 
	- leader + c + c = pick (based on a letter index) which of the session buffers to close
	 
	- leader + c + \<number> = focus / change to the buffer with the buffer numbered \<number>
	 
	- Leader +  s + \<Number> = Switch the current buffer with the buffer numbered \<Number>


- ### Fugitive plugin [ .config/nvim/after/plugin/fugitive.lua ]
	
	- Leader + g + s = Fugitive git status
	- Leader + g + d = Fugitive git diff


- ### Harpoon plugin [ .config/nvim/after/plugin/harpoon.lua ]
	
    - Leader + h = harpoon main screen / plugin
    - Leader + a = harpoon mark keybinding

	- Leader + 1 = harpoon file 1
	- Leader + 2 = harpoon file 2
	- Leader + 3 = harpoon file 3
	- Leader + 4 = harpoon file 4
	- Leader + 5 = harpoon file 5
	- Leader + 6 = harpoon file 6
	- Leader + 7 = harpoon file 7
	- Leader + 8 = harpoon file 8
	- Leader + 9 = harpoon file 9
	- Leader + 0 = harpoon file 10
	
	- Leader + t + 1 = harpoon terminal 1
	- Leader + t + 2 = harpoon terminal 2
	- Leader + t + 3 = harpoon terminal 3
	- Leader + t + 4 = Harpoon terminal 4


- ### LSP keybinds
	
    - gd = Go to definition
    - K = Hover
    - [d / ]d = Go to next and previous diagnostic hunks
    - Ctrl + o = Bring up signature help
	- Ctrl + p = Previous LSP suggestion / item
	- Ctrl + n = Next LSP suggestion / item
	- Ctrl + y = Confirm selected suggestion / item
	- Ctrl + Space = Complete suggestion ??
    - Leader + vca = Choose and execute available code actions
    - Leader + vd = Open diagnostics in a floating window
    - Leader + vrn = Rename references to the symbol under the cursor 
    - Leader + vrr = View references
    - Leader + vws = View LSP workspace symbol


- ### Packer plugin manager
	  
	- Leader + p + s = Packer Sync

 
- ### Ranger / rnvimr plugin
	
	- Leader + r = Ranger with rnvimr plugin inside Neovim


- ### Surround plugin

    - c + s + current surrounding + new surrounding = Change current for new surrounding signs / marks
    - c + s + t = go back to previuos pair
    - d + s + current surrounding = Delete current surrounding delimiters / signs / marks
    - y + s + iw motion + surrounding = Add another surrounding inside the current one
    - y + s + s + b or ) = Wrap the entire line in parentheses
    - V + S + 'XML tag / surrounding' = this can surround the entire current line in the surroundig / XML tag

    - Only the opening brackets used with surround pad the surrounded text with a space
    - To surround without padding, use the closing brackets



- ### Overlength plugin

    - Leader + ol = Toggle overlength highlighting on / off


- ### Telescope plugin & extensions
	
    - Leader + t + f = Telescope plugin main screen
	- Leader + t + s = Live grep the file, telescope plugin
    - Leader + t + g = Telescope Git module
	- Leader + t + o = History of recently opened files, works with hidden folder files
    - Leader + v + h = View help tags
    - Inside of fuzzy finding window (works both in normal and insert modes) :
        - Ctrl + n = Next selection
        - Ctrl + p = Previous selection
        - Ctrl + c = Close window and return to working buffer
        - Ctrl + q = Send to quick-fix list
        - Ctrl + i = Select more in horizontal (??)
        - Ctrl + x = Select more in vertical (??)



- ### Trouble plugin
	
	- Leader + x + q = Trouble toggle quick-fix
	- Leader + x + w = Trouble workspace diagnostics 
	- Leader + x + x = Trouble full toggle
	- Leader + x + d = Trouble document diagnostics
	- Leader + x + l = Trouble location list

 
- ### Undotree plugin
	
	- Leader + u = Toggle Undo tree (pops window on the side)

- ### Vinegar plugin

    - Inside of Ex: What is inside quotes is the keybind
        - "-" = Go up a directory
        - I = Makes the Ex default top banner show
        - "." = Pre-populate a file at the end of a ":" command line
        - y. = Yank an absolute path for the file under the cursor
        - ~ = Go to $HOME
         - Ctrl + ^ = Go to previous buffer
    
- ### Zenmode plugin
	
	- Leader + zz = Zen mode
	- Leader + zZ = Zen mode without numbers and wrap


- ### Unbound
	
	- Leader + I = Nothing
	- Leader + D = Nothing
	- Leader + F = Nothing
	- Leader + J = Nothing
	- Leader + K = Nothing
	- Leader + L = Nothing
	- Leader + Ñ (or whatever is here in english) = Nothing
	- Leader + X = Nothing
	- Leader + N = Nothing 


- ### TMUX: Custom keybinds

    - Ctrl + a = Prefix for tmux commands
    - Prefix + r = Re-sources the .tmux.conf config file
    - Prefix + h = Splits the window into 2 "horizontal" halves (vertical division)
    - Prefix + v = Splits the window into 2 "vertical" halves (horizontal division)
    - Prefix + i = Run tmux.cht.sh script (copied from ThePrimeagen's tmux setup)
    - Prefix + f = Run tmux-sessionizer script (copied from ThePrimeagen's tmux setup)
    - Prefix + D = Run tmux-sessionizer for quick access to dotfiles
    - Prefix + G = Run tmux-sessionizer for quick access to Github folder
    - Prefix + S = Run tmux-sessionizer for quick access to setup git repo
    - Prefix + ^ = Go to last window
    - Prefix + Prefix = Sends the prefix key combination (Ctrl + A) to the program below tmux
