zipcount() {
    if [ -t 0 ] && [ "$#" -gt 0 ]; then
        # If there's direct input (arguments given)
        for arg in "$@"; do
            zipinfo -h "$arg" | tr '\n' ':' | awk -F':' '{print $2 , $5 , "files"}'
        done
    else
        # If piped input is provided
        while IFS= read -r file; do
            zipinfo -h "$file" | tr '\n' ':' | awk -F':' '{print $2 , $5 , "files"}'
        done
    fi
}
