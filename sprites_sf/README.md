# Street fighter sprite

## Notes : 

Should fit in any 256 colors terminal. based on : https://github.com/ajgon/street-fighter-motd (minus the lame bootstrap and vagrant setup)

## Bashrc : 

Put that in your .{zsh,bash,whatever}rc : 
(Change $HOME to wherever you cloned that crap)

```bash
 sprite_sf=( $HOME/sprites_sf/*.txt  ) ; cat "${sprite_sf[RANDOM % ${#sprite_sf[@]}]}"
```
