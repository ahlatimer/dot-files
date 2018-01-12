window_root "~/workspace/api-v2"
new_window "cs-api-console"

split_v 25
split_v 50

run_cmd "mix test.watch" 2
# run_cmd "mix phx.server" 3

select_pane 1
