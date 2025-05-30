# read the raw data from the ngspice output
from spicelib import RawRead # Assuming spicelib is installed and in the Python path
import matplotlib.pyplot as plt # Import matplotlib
import numpy as np # Import numpy for NumPy arrays
import sys # Import sys for sys.exit

# Path to your raw file
raw_file_path = "test_nfet_03v3.raw" # Make sure this file is in the same directory as the script, or provide the full path

try:
    # Create a RawRead object
    raw_data = RawRead(raw_file_path)

    print(f"Successfully loaded {raw_file_path}")

    # Get a list of available traces (signals/vectors) in the raw file
    traces = raw_data.get_trace_names()
    print("\nAvailable traces:")
    for trace_name in traces:
        print(f"- {trace_name}")

    # Get the specific traces for plotting
    x_axis_trace_name = "v(d)" # Assuming this is your sweep voltage
    y_axis_trace_name = "i(vd)"

    if x_axis_trace_name in traces and y_axis_trace_name in traces:
        x_trace_object = raw_data.get_trace(x_axis_trace_name)
        y_trace_object = raw_data.get_trace(y_axis_trace_name)

        # Convert to NumPy arrays to allow for mathematical operations
        # Ensure x_trace_object and y_trace_object are not None before converting
        if x_trace_object is None or y_trace_object is None:
            print(f"Error: Could not retrieve one or both traces: {x_axis_trace_name}, {y_axis_trace_name}")
            sys.exit(1) # Exit if traces are not found
            
        x_data = np.array(x_trace_object)
        y_data = np.array(y_trace_object)

        print(f"\nPlotting -1 * {y_axis_trace_name} vs {x_axis_trace_name}...")

        # Create the plot
        plt.figure()
        plt.plot(x_data, -1 * y_data) # Perform operation on NumPy array

        # Add labels and title
        plt.xlabel(x_axis_trace_name)
        plt.ylabel(f"-1 * {y_axis_trace_name}") # Update label
        plt.title(f"-1 * {y_axis_trace_name} vs {x_axis_trace_name}") # Update title
        plt.grid(True)

        # Show the plot
        plt.show()
    else:
        print(f"\nError: Could not find one or both traces for plotting: {x_axis_trace_name}, {y_axis_trace_name}")

    # Example: Get a specific trace (e.g., the first one in the list)
    if traces:
        example_trace_name = traces[0]
        trace_object = raw_data.get_trace(example_trace_name)
        print(f"\nData for trace '{example_trace_name}':")
        # The trace_object itself is usually a NumPy array or similar
        # For demonstration, let's print the first few values if it's not too long
        if hasattr(trace_object, '__len__') and len(trace_object) > 5:
            print(trace_object[:5])
            print("...")
        else:
            print(trace_object)

    # You can also get multiple traces at once
    # if len(traces) > 1:
    #     multi_trace_data = raw_data.get_traces([traces[0], traces[1]])
    #     print(f"\nData for traces '{traces[0]}' and '{traces[1]}':")
    #     # multi_trace_data will be a dictionary or a list of arrays
    #     print(multi_trace_data)

    else:
        print("\nNo traces found in the raw file.")

    # You can also access plots if your raw file contains multiple plots
    # num_plots = raw_data.get_plot_count()
    # print(f"\nNumber of plots: {num_plots}")
    # if num_plots > 0:
    #     # Switch to a different plot if needed (plots are 0-indexed)
    #     # raw_data.select_plot(0) # Select the first plot
    #     current_plot_name = raw_data.get_plot_name()
    #     print(f"Current plot name: {current_plot_name}")


except FileNotFoundError:
    print(f"Error: The file {raw_file_path} was not found.")
except ImportError:
    print("Error: matplotlib is not installed. Please install it by running: pip install matplotlib")
except Exception as e:
    print(f"An error occurred: {e}")

# To learn more about what you can do with the raw_data object,
# you can explore its methods and attributes:
# print(dir(raw_data))
#
# And for a specific trace object:
# if traces:
#   trace_object = raw_data.get_trace(traces[0])
#   print(dir(trace_object))
#
# Refer to the spicelib documentation for more details:
# https://github.com/nunobrum/spicelib

