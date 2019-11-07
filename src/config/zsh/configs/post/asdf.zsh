ASDF_DIR="/usr/local/opt/asdf"
ASDF_BIN="${ASDF_DIR}/bin"

# Load command
if [[ -f "$ASDF_BIN/asdf" ]]; then
    export ASDF_DIR

    ASDF_USER_SHIMS="${ASDF_DATA_DIR:-$HOME/.asdf}/shims"

    path=(
        $ASDF_USER_SHIMS
        $ASDF_BIN
        $path
    )
fi
