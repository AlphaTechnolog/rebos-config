# This file is probably gonna cause rebos config check to fail with a single
# warning at least, by saying that common or common/utils.sh idk does not matches
# with any manager so it won't run this, which is fine and can be skipped.

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
