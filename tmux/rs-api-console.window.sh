window_root "~/workspace/api"
new_window "rs-api-console"

split_v 25
split_v 50

run_cmd "foreman start" 2
run_cmd "tail -f log/development.log" 3

select_pane 1
