# Nextflow course
## Day 2

### Channels

* Part between a process and another
* First-in first-out principle: not necessarily sequential
* Some steps can start in parallel, maybe the last one in order of the script will start first

Today we will use this github repo: https://github.com/CenterForMedicalGeneticsGhent/nextflow-beginner-feb-2024

First script we will look at is chapter04_channels/01_queue.nf
This is a queue channel (```.of```): we checked the order of the output. 

02_value.nf shows a value channel (```.value```). 

04_channel_factory_value.nf shows channel factories. 

The only command that creates a value channel is .value, all the other ones create a queue channel (```.of```, ```.fromPath```, ```.fromList```, etc. )


### Processes

Again, execution of a processs has no order.

Directives are settings of a process. 

You can also use booleans in a process. 

If you do not inlcude a shebang line it will be interpreted automatically as a BASH script. 

### Working directory

Here you can find: 
* the source code of everything nextflow does behind the scenes. You only need this in case you want to debug a very obscure error
* command.out : shows the output of the STDOUT
* all files meaning input files (in the form of a symlink usually) and output files, if any. The symlinks are important because... ?

Staging means what happens to the input files. You can configure this as a directory. 
By default staging is symlinking the input files. 

### Operators

They are used to manipulate channels. 

If you use ```it``` you do not have to use the arrows (```->```) for the .map function. 
Because that is the built in

### Groovy

Check scripts.

### Modularization

You can import any existing module from another file. 
Modules: collection of processes that you can reuse. 