#!/bin/zsh

show_help() {
    echo "Script used to change colors and layouts using my configs"
    echo
    echo "Usage: /path_to_this_file/change_theme.zsh [option value] [option value] ..."
    echo
    echo "    Options:            Values:        Description:"
    echo "    -c, --colors        min_bw         Change color theme"
    echo "                        min_wb"
    echo
    echo "    -l, --layout        None yet :(    Change layout theme"
    echo "                                       (ags only)"
    echo
    echo "    -h, --help                         Shows help"
}

# get args
while [[ $# -gt 0 ]]; do
    case $1 in
        -c|--colors)
            case $2 in
                min_bw)
                    COLORS="min_bw"
                    ;;
                min_wb)
                    COLORS="min_wb"
                    ;;
                *)
                    echo ">> Unknown value for option -c|--colors: '$2'"
                    exit 3
                    ;;
            esac

            shift
            shift
            ;;

        -l|--layout)
            case $2 in
                *)
                    echo ">> Unknown value for option -l|--layout: '$2'"
                    exit 4
                    ;;
            esac

            shift
            shift
            ;;

        -h|--help)
            show_help
            exit 1
            ;;

        -*|--*)
            echo ">> Unknown arg: $1"
            exit 2
            ;;
    esac
done

# apply color theme
if [[ -n "$COLORS" ]]; then
    echo ">> Applying color theme '$COLORS'"
    # TODO: actually apply the color theme
fi

# apply layout theme
if [[ -n "$LAYOUT" ]]; then
    echo ">> Applying layout theme '$LAYOUT'"
    # TODO: actually apply the layout theme
fi
