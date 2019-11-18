: ${ASDF_DATA_DIR="${HOME}/.local/share/asdf"}
: ${ASDF_CONFIG_FILE="${HOME}/.config/asdfrc"}

ASDF_DIR="/usr/local/opt/asdf"
ASDF_BIN="${ASDF_DIR}/bin"

# Load command
if [[ -f "$ASDF_BIN/asdf" ]]; then
    export ASDF_CONFIG_FILE
    export ASDF_DATA_DIR
    export ASDF_DIR

    path=(
        "${ASDF_DATA_DIR}/shims"
        $ASDF_BIN
        $path
    )
fi
