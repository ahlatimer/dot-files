session_root "~/workspace"

if initialize_session "rs-vim"; then

  load_window "rs-api-vim"
  load_window "rs-frontend-vim"
  load_window "rs-cookbooks-vim"
  select_window 1

fi

finalize_and_go_to_session
