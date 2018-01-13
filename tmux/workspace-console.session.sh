session_root "~/workspace"

if initialize_session "workspace-console"; then

  load_window "lift-console"
  load_window "dozer-console"
  load_window "picker-console"
  load_window "foreman-console"
  load_window "foundation-console"
  select_window 1

fi

finalize_and_go_to_session
