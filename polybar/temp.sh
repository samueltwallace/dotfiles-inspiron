#!/bin/bash

echo "Outside $(weather -s F| head -n 3 | tail -n 1)"
