![logo_Enershare-300x88](https://github.com/user-attachments/assets/99e18ea1-c528-4b08-b4bb-ec0dbaef5926)

# Running and configuring the Grid Simulator


1. To the Grid Simulator, run `Test_Grid_Simulator.py`. This runs the configured grid analysis for a specified electricity grid (pilot use case). 
3. To change an electricity grid, a pilot case has to be selected from the list of pilot Enums specified in 'Pilot.py'. Switch to a desired pilot use case by changing 'pilot_name' variable.
4. The Grid Simulator requires three types of files to perform the grid state analysis:  
- load_forecasts - A file that contains active power forecasts of individual nodes in the network (per timestamp). This file is specified in `Test_Grid_Simulator.py`.
- pv_forecasts - A file that contains PV installation forecasts of individual nodes in the network (per timestamp). This file is specified in `Test_Grid_Simulator.py`.
- main_resource_filename/main_resource_filepath - An ESDL (Energy System Description Language) file (and filepath) that contains the grid topology. The topology has to be created and specified using the ESDL language. To create the topology, refer to the [ESDL documentation] (https://esdl-mapeditor-documentation.readthedocs.io/en/latest/). This file is specified in `Grid_Simulator.py`.
