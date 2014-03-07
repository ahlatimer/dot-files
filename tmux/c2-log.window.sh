window_root "~/workspace/consumer"
new_window "c2-log"

split_h 50

run_cmd "tail -f log/development.log" 1

select_pane 0
