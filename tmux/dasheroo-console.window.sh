window_root "~/workspace/Dasheroo"
new_window "dasheroo-console"

split_v 10

run_cmd "bundle exec foreman start -f Procfile.dev" 1

select_pane 0
