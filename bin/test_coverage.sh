#!/bin/bash

rm -rf _build

CONSOLIDATE=false mix clean
CONSOLIDATE=false mix test --cover

CONSOLIDATE=true mix clean
CONSOLIDATE=true mix test --cover

CONSOLIDATE=false mix clean
CONSOLIDATE=false mix test --cover


