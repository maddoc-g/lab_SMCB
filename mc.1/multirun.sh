#!/bin/bash

NRUNS=5
AVG_FILE="averages_300K.dat"

echo -e "#gamma\ttotal_trials\tacceptance_rate" > "$AVG_FILE"

for i in {1..15}; do
    gamma=$(awk -v i="$i" 'BEGIN {printf "%.2f", i*0.02}')

    sed -i "s/^gamma[[:space:]]*.*/gamma    $gamma/" parameters.1

    files=()
    for r in $(seq 1 $NRUNS); do
        out="output_g${gamma}_run${r}.dat"
        ./mc.x parameters.1 > "$out"
        if [ $? -ne 0 ] || [ ! -s "$out" ]; then
            echo "WARNING: gamma=$gamma run=$r failed or produced empty output" >&2
            continue
        fi
        files+=("$out")
    done

    if [ ${#files[@]} -eq 0 ]; then
        echo "ERROR: no valid output for gamma=$gamma, skipping" >&2
        continue
    fi

    # per run: total trials = sum of column 7
    #          trials per accepted step = total trials / number of steps (rows with time > 0)
    # then average both quantities across runs
    awk -v g="$gamma" '
        FNR == 1 { run++ }
        /^#/ || NF < 7 { next }
        {
            total[run] += $7
            if ($1 > 0) steps[run]++
        }
        END {
            n = 0
            for (r = 1; r <= run; r++) {
                if (steps[r] == 0) continue
                n++
                st += total[r]
                sr += total[r] / steps[r]
            }
            if (n == 0) exit 1
            printf "%s\t%.6f\t%.6f\n", g, st/n, sr/n
        }
    ' "${files[@]}" >> "$AVG_FILE"
done