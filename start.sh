#!/bin/sh

export DOCUMIZESALT
export DOCUMIZELOCATION

./documize -dbtype "$DOCUMIZE_DB_TYPE" -db "$DOCUMIZE_DB" -port "$DOCUMIZE_PORT"
