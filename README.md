# Microgrid-Explorer

<img width="572" alt="image" src="https://github.com/user-attachments/assets/b2a05a70-1726-41f4-b43e-44feeecbdbeb">

## Background
#### Climate change is one of the most pressing challenges of our time, and requires innovative solutions that address the issue’s scientific, social and economic complexities. Among these solutions is the idea of climate resilience. Climate resilience is an essential community characteristic because it demonstrates their ability to recover and adapt after an extreme weather event. Thus, climate change education is a significant part of climate resilience as it teaches community members about the central issue and encourages them to incorporate solutions effective to their community’s needs. Microgrid Explorer is an initiative that provides a creative solution to energy education. It was built by Allison Peng in support of NSF-funded Project STORM - Data-Driven Approaches for Secure Electric Grids in Communities Disproportionately Impacted by Climate Change - at the Alaska Center for Energy and Power.

### Links for demo version and presentation
#### Demo Version: https://apeng10.itch.io/microgrid-explorer
#### YouTube Video ACEP Symposium and Live Demo: https://www.youtube.com/watch?v=MZ6F43FyB5M 


## Usage 
#### Microgrid Explorer is a Godot based energy education game aimed to teach users about the microgrid system. Currently in development but demo version is available via itch.io. To run from Godot, download Godot version 4.1.1 and load in file ''

#### Download Godot 4.1.1 for Windows:

```
# Download Godot
Invoke-WebRequest -Uri "https://downloads.tuxfamily.org/godotengine/4.1.1/Godot_v4.1.1-stable_win64.exe.zip" -OutFile "godot_4.1.1.zip"

# Extract the zip file
Expand-Archive -Path "godot_4.1.1.zip" -DestinationPath "godot_4.1.1"
```

#### Download Godot 4.1.1 for MacOS:
```
curl -L https://downloads.tuxfamily.org/godotengine/4.1.1/Godot_v4.1.1-stable_macos.universal.zip -o godot_4.1.1.zip
unzip godot_4.1.1.zip -d godot_4.1.1

```

## Key Features 

### Microgrid Explorer Interface and Underlying Game Structure using GraphNode
#### Skeleton of the electric grid representation uses the GraphNode library in Godot. The nodes created from GraphNode are placed in GraphEdit, or the black grid background. Children of the GraphNode container are the input and output slots of each node. Further documentation can be found here: https://docs.godotengine.org/en/stable/classes/class_graphnode.html

![Screenshot 2024-07-18 135103](https://github.com/user-attachments/assets/96a2dd69-a83b-4888-a1b3-b3d00b4b6ac8)


### Interactive Dialogue System that Engages Audience
#### Dialogue feature allows users to read material at their own pace. It provides information on the microgrids.

![ezgif-7-556a4b5c1b](https://github.com/user-attachments/assets/3345fbe0-0d9f-4e32-8c09-43b85e4bd727)


### Connect and Interact with Microgrid Elements 
#### Users can freely move around elements and 
![ezgif-7-e37d238884](https://github.com/user-attachments/assets/019eb647-c99c-4569-8068-0644be2b59d7)


#### Add Microgrid Elements and Simulate Microgrid Behavior

![ezgif-7-da20621665](https://github.com/user-attachments/assets/19d8bc9e-85aa-4340-b135-ef551fd73e6d)
