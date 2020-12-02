import bpy
import os

#---------------------------------------------------------------------
# This function takes a list of floats from an oscilloscope 
# representing voltage and generates a force statement 
# replicating the voltages.
# Params:
#   list - float array holding voltages
#   name - string holding name of variable to force 
#   vl   - the minimum voltage allowed
#   vh   - the maximum voltage allowed
#--------------------------------------------------------------------- 
def gen_force(list, name, vl, vh):
    force = "force " + name + " "
    prev = -20  # Previous HIGH/LOW voltage
    i = 0
    for curr in list:
        if curr - prev >= vh - vl:   # Changes to LOW signal
            force = force + "1 @ " + "{0}".format(i) + "ps, "
            prev = vh
        elif curr - prev <= vl - vh: # Changes to HIGH signal
            force = force + "0 @ " + "{0}".format(i) + "ps, "
            prev = vl
        i = i + 1
    force = force[:-2] # Remove last ', ' using slicing
    return force

#--------------------------------------------------------------------
# This function converts a given CSV file into a string representing
# the contents of a DO file ready for simulation in ModelSim
# Params:
#   name - the filename of the CSV file to be read
#--------------------------------------------------------------------
def csv_to_do(name):
    # Place all values into these lists
    time = []
    ch1 = []
    ch2 = []
    
    # Find the filepath for the file to open
    target_file = os.path.join(directory, 'PS2Keyboard')
    target_file = os.path.join(target_file, name)

    # Open the file for reading and store each line separately 
    f = open(target_file, "r")
    Lines = f.readlines()
    
    # Parse each line in CSV and store floats in proper lists
    for line in Lines[14:-1]: # Ignore first 14 and last 1 lines
        l = line.strip().split(',')
        t = float(l[0].split("e")[0]) * (10 ** float(l[0].split("e")[1]))
        time.append(t)
        ch1.append(float(l[1]))
        ch2.append(float(l[2]))
        
    f.close() # We are done reading
    
    # Generate the force statements with LOW=0.6 and HIGH=3.3
    force_ch1 = gen_force(ch1, name + "_ch1", 0.6, 3.3)
    force_ch2 = gen_force(ch2, name + "_ch2", 0.6, 3.3)
    
    return force_ch1 + "\n" + force_ch2 # Return file contents

#-----------------------------------------------------------------#
#------------------------Function Calls---------------------------#

# List holding filenames of all CSV files
files = ["a", "a_hold","d","e","f","g","r","s","t","w","water"]

# Get filepath to this Blender file and find the file to write to
blend_file_path = bpy.data.filepath
directory = os.path.dirname(blend_file_path)

# Find the file we will be writing the do file to
target_file = os.path.join(directory, 'PS2Keyboard')
target_file = os.path.join(target_file, 'force.do')

k = open(target_file, "w") # Open the combined DO file

for file in files: # Create DO file for each CSV file
    # Find the file we will be writing the do file to
    target_file = os.path.join(directory, 'PS2Keyboard')
    target_file = os.path.join(target_file, file + '.do')
    
    data = csv_to_do(file + ".csv") # Get file data
    
    f = open(target_file, "w") # Open the DO file for writing
    f.write(data)              # Write data to specific file
    k.write(data + "\n")       # Write data to combined file 
    f.close()                  # Close file

k.close() # Close combined file, we are done