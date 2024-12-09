# setting up on WSL
- created file in `~/.config % cat ~/.local/bin/sumatrapdf.sh`
- file has the following content:
```
#!/usr/bin/env zsh
texpath=$(wslpath -m "$1")
line = $2
pdfpath=$(wslpath -m "$3")

sumatrapdf.exe -reuse-instance -forward-search "$texpath" "$line" "$pdfpath"

# echo "Input: $1" >> ~/sumatra_debug.log

echo "sumatrapdf.exe -reuse-instance -forward-search $texpath $line $pdfpath" >> ~/sumatra_debug.log
```

## inverse search
- managed to get it working.
- requirements:
1. run neovim with listening option: `nvim --listen /tmp/nvim`
2. use sumatra setting: `wsl /home/flo/.local/bin/nvr --servername /tmp/nvim --remote-silent +"%l" "$(wslpath '%f')"`

## fixing wrong paths in synctex file
- vimtex on WSL writes the wrong paths into the synctex file.
- in order to fix that one needs to replace the `/mnt/c` with `c:` in the synctex file
- i added a script, but i have not checked it!
