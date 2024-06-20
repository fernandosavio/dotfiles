if status is-interactive
    # Commands to run in interactive sessions can go here

    # https://starship.rs
    starship init fish | source

    fish_add_path "$HOME/.local/bin"

    set -gx DENO_INSTALL "$HOME/.deno"
    fish_add_path "$DENO_INSTALL/bin"

    zoxide init --cmd j fish | source
end
