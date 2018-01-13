window_root "~/workspace/sifter"
new_window "sifter-console"

split_v 25
split_v 50

run_cmd "mix phx.server" 3

select_pane 1
