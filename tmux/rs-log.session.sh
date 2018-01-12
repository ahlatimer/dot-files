session_root "~/workspace"

if initialize_session "rs-log"; then

  load_window "rs-api-console"
  load_window "rs-frontend-console"
  load_window "rs-cookbooks-console"

  select_window 1

fi

finalize_and_go_to_session
