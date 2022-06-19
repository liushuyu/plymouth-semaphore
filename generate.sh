#!/bin/bash
# Declare source root.
export SRCDIR="${PWD}"

for i in livekit semaphore; do
    echo "Cleaning up ..."
    rm -rf "${SRCDIR}"/$i

    echo "Generating theme: $i ..."
    mkdir -pv "${SRCDIR}"/$i

    echo "Generating startup animation frames for theme: $i ..."
    (
        if [[ "${i}" = "semaphore" ]]; then
            cd "${SRCDIR}"/sequences/startup/
        elif [[ "${i}" = "livekit" ]]; then
            cd "${SRCDIR}"/sequences/livekit/
        else
            echo "Undefined theme: $i \!"
            exit 1
        fi

        for frame in *.svg; do
	    inkscape $frame -w 640 -D \
                -o "${SRCDIR}"/$i/startup-${frame/.svg/}.png
        done
    )

    echo "Generating shutdown animation frames for theme: $i ..."
    (
        cd "${SRCDIR}"/sequences/shutdown/

        for frame in *.svg; do
            inkscape $frame -w 640 -D \
                -o "${SRCDIR}"/$i/shutdown-${frame/.svg/}.png
        done
    )

    echo "Copying theme data for: $i ..."
    install -Dvm644 "${SRCDIR}"/data/$i.{plymouth,script} \
        -t "${SRCDIR}"/$i/
done
