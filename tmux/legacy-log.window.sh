window_root "~/workspace/satisfaction"
new_window "legacy-log"

split_h 50

run_cmd "tail -f log/development.log" 1
run_cmd "redis-server > /dev/null &" 0
run_cmd "~/devs/scripts/tmux_copy.sh &" 0
run_cmd "script/satisfaction start-consumer_world" 0

select_pane 0
