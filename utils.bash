current_context() {
  kubectl config view -o=jsonpath='{.current-context}'
}

get_contexts() {
  kubectl config view \
    -o=jsonpath='{range .contexts[*].name}{@}{"\n"}{end}'
}
