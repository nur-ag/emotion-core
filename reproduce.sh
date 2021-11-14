#!/bin/bash
# Create and activate virtual environment
virtualenv venv
. venv/bin/activate

# Go into the emotion classification folder
cd emotion-classification/

# Install all emotion classification dependencies
pip3 install -r requirements.txt

# Run the replica
# Note: all other reproducibility recipes (json configs) can be found in the `config' folder.
python3 src/run.py -c configs/sample.json

# Print out the resulting report -- the hash is generated from the sample
# If the printout fails (e.g. `cat path/to/hash.json`), this is not reproducing properly.
cat output/sample/35c2adf1432d9b1f7c577db0dc8022b5.json

