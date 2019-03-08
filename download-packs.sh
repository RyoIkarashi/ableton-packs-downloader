#!/usr/bin/env bash

while getopts c:o: option
do
case "${option}"
in
c) COOKIE=${OPTARG};;
o) OUTPUT=$OPTARG;;
esac
done

PACKS=(
    'https://ableton.com/en/packs/beat-tools/download/6361612/'
    'https://ableton.com/en/packs/retro-synths/download/6361612/'
    'https://ableton.com/en/packs/orchestral-percussion/download/6361612/'
    'https://ableton.com/en/packs/orchestral-woodwinds/download/6361612/'
    'https://ableton.com/en/packs/orchestral-brass/download/6361612/'
    'https://ableton.com/en/packs/orchestral-strings/download/6361612/'
    'https://ableton.com/en/packs/latin-percussion/download/6361612/'
    'https://ableton.com/en/packs/session-drums-club/download/6361612/'
    'https://ableton.com/en/packs/bomblastic/download/6361612/'
    'https://ableton.com/en/packs/breakbeats/download/6361612/'
    'https://ableton.com/en/packs/build-and-drop/download/6361612/'
    'https://ableton.com/en/packs/chop-and-swing/download/6361612/'
    'https://ableton.com/en/packs/connection-kit/download/6361612/'
    'https://ableton.com/en/packs/convolution-reverb/download/6361612/'
    'https://ableton.com/en/packs/creative-extensions/download/6361612/'
    'https://ableton.com/en/packs/cyclic-waves/download/6361612/'
    'https://ableton.com/en/packs/designer-drums/download/6361612/'
    'https://ableton.com/en/packs/digicussion-1/download/6361612/'
    'https://ableton.com/en/packs/digicussion-2/download/6361612/'
    'https://ableton.com/en/packs/drive-and-glow/download/6361612/'
    'https://ableton.com/en/packs/drum-booth/download/6361612/'
    'https://ableton.com/en/packs/drum-essentials/download/6361612/'
    'https://ableton.com/en/packs/drum-machines/download/6361612/'
    'https://ableton.com/en/packs/electric-keyboards/download/6361612/'
    'https://ableton.com/en/packs/glitch-and-wash/download/6361612/'
    'https://ableton.com/en/packs/grand-piano/download/6361612/'
    'https://ableton.com/en/packs/granulator-ii/download/6361612/'
    'https://ableton.com/en/packs/guitar-and-bass/download/6361612/'
    'https://ableton.com/en/packs/konkrete-breaks/download/6361612/'
    'https://ableton.com/en/packs/loopmasters-mixtape/download/6361612/'
    'https://ableton.com/en/packs/big-three/download/6361612/'
    'https://ableton.com/en/packs/max-live-building-tools/download/6361612/'
    'https://ableton.com/en/packs/max-live-essentials/download/6361612/'
    'https://ableton.com/en/packs/max-live-pluggo-live/download/6361612/'
    'https://ableton.com/en/packs/probability-pack/download/6361612/'
    'https://ableton.com/en/packs/punch-and-tilt/download/6361612/'
    'https://ableton.com/en/packs/samplification/download/6361612/'
    'https://ableton.com/en/packs/session-drums-multimic/download/6361612/'
    'https://ableton.com/en/packs/session-drums-studio/download/6361612/'
    'https://ableton.com/en/packs/skitter-and-step/download/6361612/'
    'https://ableton.com/en/packs/sound-objects-lite/download/6361612/'
    'https://ableton.com/en/packs/surround-panner/download/6361612/'
    'https://ableton.com/en/packs/synth-essentials/download/6361612/'
    'https://ableton.com/en/packs/forge/download/6361612/'
    'https://ableton.com/en/packs/unnatural-selection/download/6361612/'
    'https://ableton.com/en/packs/vinyl-classics/download/6361612/'
)

wget --load-cookies ${COOKIE} --content-disposition ${PACKS[@]} -P "${OUTPUT}"
