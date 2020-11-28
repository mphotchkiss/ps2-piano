
import bpy
import os
import math
import struct
import ctypes

# Convert a float into a string representing the IEE 745 standard for a 32-bit float
def to_binary(num):
    return ''.join(bin(ord(str(c)[0])).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))

def convert_to_do_file(name):
    # Get filepath to this Blender file and find the file to write to
    blend_file_path = bpy.data.filepath
    directory = os.path.dirname(blend_file_path)
    target_file = os.path.join(directory, 'PS2Keyboard')
    target_file = os.path.join(target_file, name + '.csv')

    # Open the file for reading and store each line separately 
    f = open(target_file, "r")
    Lines = f.readlines()

    # Place all values into these lists
    time = []
    ch1 = []
    ch2 = []
    i = 0
    for line in Lines:
        if line.strip() == ",,":
            break
        elif i > 14:
            l = line.strip().split(',')
            #print(format("{:f}, {:f}".format(float(l[0].split("e")[0]), float(l[0].split("e")[1]))))
            
            t = float(l[0].split("e")[0]) * pow(10, float(l[0].split("e")[1]))
            #values = [t, float(l[1].replace(" ","")), float(l[2].replace(" ",""))]
            time.append(t)
            ch1.append(float(l[1].replace(" ","")))
            ch2.append(float(l[2].replace(" ","")))
        else:
            i = i + 1

    #i = 0;
    #for t in time: # Print out the values to see if we have read them correctly
    #    print("{:f}, {:f}, {:f}".format(t, ch1[i], ch2[i]))
    #    i = i + 1
        
    f.close() # Close the file, we are done reading

    # Find the file we will be writing the do file to
    target_file = os.path.join(directory, 'PS2Keyboard')
    target_file = os.path.join(target_file, name + '.do')

    # Open the do file
    k = open(target_file, "w")

    # Write a new change only if the change is within the range (0.6, 3.3)
    force_ch1 = "force ch1 "
    force_ch2 = "force ch2 "
    i = 0
    current_ch1 = 20
    current_ch2 = 20
    previous_ch1 = -20
    previous_ch2 = -20
    for t in time:
        current_ch1 = ch1[i]
        current_ch2 = ch2[i]
        if abs(current_ch1 - previous_ch1) >= 3.3-0.6:
            force_ch1 = force_ch1 + to_binary(current_ch1) + " @ " + to_binary(t) + " "
            previous_ch1 = current_ch1
        if abs(current_ch2 - previous_ch2) >= 3.3-0.6:
            force_ch2 = force_ch2 + to_binary(current_ch2) + " @ " + to_binary(t) + " "
            previous_ch2 = current_ch2
        i = i + 1

    k.write(force_ch1)
    k.write("\n")
    k.write(force_ch2)
    k.close()
    
    
    
convert_to_do_file("a")
convert_to_do_file("a_hold")
convert_to_do_file("d")
convert_to_do_file("e")
convert_to_do_file("f")
convert_to_do_file("g")
convert_to_do_file("r")
convert_to_do_file("s")
convert_to_do_file("t")
convert_to_do_file("w")
convert_to_do_file("water")