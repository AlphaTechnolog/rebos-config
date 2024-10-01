log_fatal() {
	rebos api echo fatal "$@"
}

log_info() {
	rebos api echo info "$@"
}

log_warning() {
	rebos api echo warning "$@"
}

die() {
	log_fatal "$@"
	exit 1
}
