#macro GRID_CELLS 70
row_length = 10
global.grid = array_create(GRID_CELLS, -1);
randomize();

for(var i = 0; i < 10; i++){
	global.grid[i] = 1;
}


global.grid[33] = 1;

grid_initialised = false;


