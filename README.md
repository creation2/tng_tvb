# Theoretical Neurosciences Group
## Adam Li
### Visiting PhD student under Whitaker and Chateaubriand Fellowship

This repo will house the code I develop in collaboration with The Virtual Brain here at Marseille, France in INS at Aix-Marseille Universite. 

## Prerequisites
You will need to have installed tvb library, tvb data, and peakdetection.

    git clone https://github.com/the-virtual-brain/tvb-library
    git clone https://github.com/the-virtual-brain/tvb-data

    Download files from here for peakdetection
    https://gist.github.com/sixtenbe/1178136

## Installing
To install this, just simply clone from github repo along with the prerequisite files.

    git clone https://github.com/adam2392/tng_tvb

Setup a virtual env and then run

    source activate venv
    pip install -r requirements.txt

## Running Simulations
### 1. Locally Running on Notebook
Modify the shell file to include your local paths to tvb lib and data, and then run it.

    ./launch_tvb.command

To run a jupyter notebook with tvb on path.

### 2. Locally Running Via Script
(Untested as of 12/19/17):
Run

    python runmainsim.py

## Running Simulations (SLURM Cluster)
In /cluster/ directory, you can modify the script to run simulations on your own cluster. Then you can just run:
    
    ./tng_job_submissions.sh

and specify some parameters, and it will run. Or if you want to vary distances with respect to a certain implantation scheme:

    ./tng_distance_submissions.sh

## Local Modules:
1. peakdetect
Used for peakdetection on the z time series to robustly automatically get onset/offset times for seizure.
2. tvbsim
Utility module for customizing tvb simulations. For example, can move contacts, can get the closest region-contact pairs for a given electrode layout. 
3. binmarcc
For running slurm jobs on MARCC cluster at JHU.
4. bintng
For running slurm jobs on the TNG cluster at INS.

