#===============================================================================
# Internal function to manage bashrc.d files
#===============================================================================

pathmunge () {
    local dir

    local -a dirs
    IFS=: read -r -a dirs <<< "$1"

    for dir in "${dirs[@]}"; do
        [ -h "$dir" ] && continue

        case ":$PATH:" in
            *:"$dir":*) ;;
            *)
                if [ "$2" = "after" ]; then
                    PATH="$PATH:$dir"
                else
                    PATH="$dir:$PATH"
                fi
                ;;
        esac
    done
}

# User specific aliases and functions
if [ -d ~/.bashrc.d/local ]; then
    for rc in ~/.bashrc.d/local/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

unset pathmunge
