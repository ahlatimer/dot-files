session_root "~/workspace"

if initialize_session "getsat-vim"; then

  load_window "c2-vim"
  load_window "services-vim"
  load_window "legacy-vim"
  select_window 0

fi

finalize_and_go_to_session
