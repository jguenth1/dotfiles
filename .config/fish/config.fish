if status is-interactive
    fish_config theme choose "Dracula Official"
    # Commands to run in interactive sessions can go here

    #source /home/jason/.config/fish/moonfly.fish
    starship init fish | source
  
    fish_add_path ~/go/bin

    alias ca="cargo"
    alias pcc="gcc -pedantic -Wall -std=c99"
end

eval $(opam env)
set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/jason/.ghcup/bin $PATH # ghcup-env
