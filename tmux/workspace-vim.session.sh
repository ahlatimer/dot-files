session_root "~/workspace"

if initialize_session "workspace-vim"; then

  load_window "lift"
  load_window "dozer"
  load_window "picker"
  load_window "foreman"
  load_window "foundation"
  select_window 1

fi

finalize_and_go_to_session
