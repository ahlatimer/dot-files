session_root "~/workspace"

if initialize_session "cs-vim"; then

  load_window "cs-api-vim"
  select_window 1

fi

finalize_and_go_to_session
