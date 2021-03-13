#!/bin/bash

rm -rf _build

CONSOLIDATE=false mix clean
CONSOLIDATE=false mix test

CONSOLIDATE=true mix clean
CONSOLIDATE=true mix test

CONSOLIDATE=false mix clean
CONSOLIDATE=false mix test


