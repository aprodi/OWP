#!/bin/bash

mkdir -p builds

# configurations for LED light cap
## no taper
openscad -o builds/delta_stage_microscope.stl -D 'transmission_illumination = true' -D 'reflection_illumination = true' openscad/delta_stage.scad
## smart taper
openscad -o builds/delta_stage_smart_brim.stl -D 'brim_radius = 5'  openscad/delta_stage.scad

# common parts
openscad -o builds/owp-base.stl -D 'weight_outer_diameter = 30' -D 'weight_inner_diameter = 25'openscad/owp-base.scad
openscad -o builds/owp-holder.stl openscad/owp-holder.scad
openscad -o builds/owp-wing.stl openscad/owp-wing.scad
openscad -o builds/owp-hex.stl openscad/.scad
openscad -o builds/owp-ring.stl openscad/owp-ring.scad

#optional parts
openscad -o builds/drilling_jig_pvc_pipe-40mm-v1.stl openscad/drilling_jig_pvc_pipe-40mm-v1.scad
openscad -o builds/cutting_jig_pvc_pipe-40mm-v3.stl openscad/cutting_jig_pvc_pipe-40mm-v3.scad
