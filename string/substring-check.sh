text='My long string'
string='y long '


find() {
    while read line; do
        [[ "$line" = *"$@"* ]] && { echo "Found !"; return 0; }
    done 
    
    echo "Not found !"; return 1;
} < "${2-/dev/stdin}"


echo $text | find "$string"
