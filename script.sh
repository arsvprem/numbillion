#!/bin/bash

# Function to convert specific numbers to words
get_word_form() {
    local num=$1
    local zeros=${#num}
    zeros=$((zeros - 1))  # since starts with 1
    case $zeros in
        0) echo "one" ;;
        1) echo "ten" ;;
        2) echo "hundred" ;;
        3) echo "thousand" ;;
        4) echo "ten thousand" ;;
        5) echo "hundred thousand" ;;
        6) echo "million" ;;
        7) echo "ten million" ;;
        8) echo "hundred million" ;;
        9) echo "billion" ;;
        10) echo "ten billion" ;;
        11) echo "hundred billion" ;;
        12) echo "trillion" ;;
        13) echo "ten trillion" ;;
        14) echo "hundred trillion" ;;
        15) echo "quadrillion" ;;
        16) echo "ten quadrillion" ;;
        17) echo "hundred quadrillion" ;;
        18) echo "quintillion" ;;
        19) echo "ten quintillion" ;;
        20) echo "hundred quintillion" ;;
        21) echo "sextillion" ;;
        22) echo "ten sextillion" ;;
        23) echo "hundred sextillion" ;;
        24) echo "septillion" ;;
        25) echo "ten septillion" ;;
        26) echo "hundred septillion" ;;
        27) echo "octillion" ;;
        28) echo "ten octillion" ;;
        29) echo "hundred octillion" ;;
        30) echo "nonillion" ;;
        31) echo "ten nonillion" ;;
        32) echo "hundred nonillion" ;;
        33) echo "decillion" ;;
        34) echo "ten decillion" ;;
        35) echo "hundred decillion" ;;
        36) echo "undecillion" ;;
        37) echo "ten undecillion" ;;
        38) echo "hundred undecillion" ;;
        39) echo "duodecillion" ;;
        40) echo "ten duodecillion" ;;
        41) echo "hundred duodecillion" ;;
        42) echo "tredecillion" ;;
        43) echo "ten tredecillion" ;;
        44) echo "hundred tredecillion" ;;
        45) echo "quattuordecillion" ;;
        46) echo "ten quattuordecillion" ;;
        47) echo "hundred quattuordecillion" ;;
        48) echo "quindecillion" ;;
        49) echo "ten quindecillion" ;;
        50) echo "hundred quindecillion" ;;
        *) echo "$num" ;;  # fallback, though shouldn't happen
    esac
}

# Main loop to prompt for input
while true; do
    echo -n "Please enter a number: "
    read input

    # Check if input matches the pattern: starts with 1, followed by 0 to 50 zeros
    if [[ $input =~ ^1(0{0,50})$ ]]; then
        word_form=$(get_word_form $input)
        word_form_upper=$(echo "$word_form" | tr 'a-z' 'A-Z')
        echo ""
        echo "======================"
        echo "$word_form_upper"
        echo "======================"
    else
        echo "Error: Invalid number. It must start with 1 and end with 0 to 50 zeros."
        echo ""
    fi
done
