#!/bin/bash

# Navigate to the script's directory to ensure correct relative paths
cd "$(dirname "$0")"

# Create the netlist directory if it doesn't exist
mkdir -p ./netlist

# Find all .sch files in the current directory and process them
for sch_file in *.sch; do
  # Skip the script itself if it ends with .sch (though unlikely for .sh)
  if [ "$sch_file" == "$(basename "$0")" ]; then
    continue
  fi

  # Extract the base name of the schematic file (without .sch extension)
  base_name=$(basename "$sch_file" .sch)

  echo "Netlisting $sch_file..."
  # Run the xschem command
  xschem -b -s -n -q --netlist_path "./netlist" --netlist_filename "$base_name.net" "$sch_file"
done

echo "All schematics netlisted." 