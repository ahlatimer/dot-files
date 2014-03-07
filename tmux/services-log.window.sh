window_root "~/workspace/services"
new_window "services-log"

split_h 50

run_cmd "tail -f log/development.log" 1

select_pane 0
