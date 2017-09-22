#!/usr/bin/python

#  Filename:    compare_traces.py
#  Created by:   Jacob R. Stevens
#  Email:        steven69@purdue.edu
#  Date Created: 06/27/2016
#  Description:  Compare the traces generated by the ISS and cpu_tracker.sv

import subprocess
import argparse
import sys
import glob
import os

def create_sim_trace():
  cmd = ['sim', '-t']
  with open('sim_trace.log', 'w') as log:
    ret = subprocess.call(cmd, stdout=log)
    if ret:
      sys.exit("ERROR: 'sim -t' command failed.")

def create_cpu_trace():
  cmd = ['make', 'system.sim']
  with open(os.devnull, 'w') as null_file:
    ret = subprocess.call(cmd, stdout=null_file, stderr=null_file)
  if ret:
    sys.exit('Error: make failed. Make sure your processor compiles first')

def clean_cpu_trace():
  cleaned_output = ''
  with open('cpu_trace.log', 'r') as trace_file:
    for line in trace_file:
      broken_line_arr = line.split()
      if len(broken_line_arr) >= 5:
        # Modify beginning of instruction entry
        # that is, the line with PC, core, instruction, and mnemonics

        # turn instruction into uppercase hex
        broken_line_arr[3] = broken_line_arr[3].upper()
        # if the instruction is a jump, change the destination addr to hex
        if broken_line_arr[4] == 'J' or broken_line_arr[4] == 'JAL':
          broken_line_arr[5] = broken_line_arr[5].upper()
        # turn PC into uppercase hex and remove space between PC and (Core n)
        first_entry = broken_line_arr[0].upper() + broken_line_arr[1]
        broken_line_arr = [first_entry] + broken_line_arr[2:]
        new_line = ' '.join(broken_line_arr) + '\n'
      elif len(broken_line_arr) == 0:
        new_line = '\n'
      elif broken_line_arr[0] == 'PC' or broken_line_arr[0][0] == 'R':
        # Modify the line that updates the PC or a register
        broken_line_arr[2] = broken_line_arr[2].upper()
        new_line = '    ' + ' '.join(broken_line_arr) + '\n'
      elif broken_line_arr[0] == '[word':
        # Modify the line that specifies where a word is read from
        broken_line_arr[3] = broken_line_arr[3].upper()
        new_line = '    ' + ' '.join(broken_line_arr) + '\n'
      elif broken_line_arr[0][0] == '[':
        # Modify the line that updates a memory location
        broken_line_arr[0] = broken_line_arr[0].upper()
        broken_line_arr[2] = broken_line_arr[2].upper()
        new_line = '    ' + ' '.join(broken_line_arr) + '\n'

      cleaned_output += new_line
  with open('cleaned_cpu_trace.log', 'w') as trace_file:
    trace_file.write(cleaned_output[:-1])

def clean_sim_trace():
  cleaned_output = ''
  with open('sim_trace.log', 'r') as trace_file:
    line = trace_file.readline()
    # Skip past the header portion to the actual execution trace
    while line and line[8:13] != '(Core':
      line = trace_file.readline()

    # Clean up the instructions up through HALT
    while line and line[-5:-1] != 'HALT':
      broken_line_arr = line.split()
      if 0 < len(broken_line_arr) < 5:
        # Make the lines that specify updates have two indents
        # because I like it better that way.
        new_line = '    ' + ' '.join(broken_line_arr) + '\n'
      else:
        new_line = ' '.join(broken_line_arr) + '\n'
      cleaned_output += new_line
      line = trace_file.readline()
<<<<<<< HEAD
  cleaned_output = cleaned_output[:-1] # remove a final '\n'
=======
    # DO the Halt
    if line and line[-5:-1] == 'HALT':
      broken_line_arr = line.split()
      new_line = ' '.join(broken_line_arr) + '\n'
      cleaned_output += new_line
      line = trace_file.readline()
      broken_line_arr = line.split()
      new_line = '    ' + ' '.join(broken_line_arr) + '\n'
      cleaned_output += new_line

>>>>>>> 7fcc3ae4a585e8f1874cfc6210eb1fc452df4572
  with open('cleaned_sim_trace.log', 'w') as trace_file:
    trace_file.write(cleaned_output)

if __name__ == '__main__':
  description = 'Compare your processor\'s trace to that of the simulator.'
  description += 'This script expects to be ran at the top level of your repo.'
<<<<<<< HEAD
=======
  description += 'If a test name is provided, it should be the full name of the'
  description += 'test case, but not include the file extension or path'
>>>>>>> 7fcc3ae4a585e8f1874cfc6210eb1fc452df4572
  help = 'Run this specific test. Optional. If not specified, the current '
  help += 'meminit.hex is used.'
  parser = argparse.ArgumentParser(description=description)
  parser.add_argument('test_name', metavar= 'test_name', type=str, nargs='?',
                      help=help)
  args = parser.parse_args()
  if args.test_name:
    asm_dir = './asmFiles/' + args.test_name + '.asm'
<<<<<<< HEAD
    try:    
	    asm_file = glob.glob(asm_dir)[0]
    except IndexError:
        err_str = 'ERROR: Please provide an existing asm file,'
        err_str += 'with no extension or leading path'
        sys.exit(err_str)
=======
    try:
      asm_file = glob.glob(asm_dir)[0]
    except:
      sys.exit("ERROR: Please provide the exact name of a test case.")
>>>>>>> 7fcc3ae4a585e8f1874cfc6210eb1fc452df4572
    ret = subprocess.call(['asm', asm_file])
    if ret:
      sys.exit('ERROR: ' + asm_file + ' could not be assembled.')
  elif not os.path.isfile('./meminit.hex'):
    sys.exit('ERROR: Could not find an existing meminit.hex.')


  create_sim_trace()
  clean_sim_trace()
  create_cpu_trace()
  clean_cpu_trace()
  cmd = ['diff', 'cleaned_cpu_trace.log', 'cleaned_sim_trace.log']
  with open(os.devnull, 'w') as null_file:
    ret = subprocess.call(cmd, stdout=null_file, stderr=null_file)
  if ret:
    cmd = ['diff', '-y', 'cleaned_cpu_trace.log', 'cleaned_sim_trace.log']
    subprocess.call(cmd)
<<<<<<< HEAD
=======

>>>>>>> 7fcc3ae4a585e8f1874cfc6210eb1fc452df4572
