depth = -1;
scale = 2;
cell_size = 32;

show_inventory = false;

inv_UI_width = 288;
inv_UI_height = 192;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_x = (gui_width * 0.5) - (inv_UI_width * 0.5 * scale);
inv_UI_y = (gui_height * 0.5) - (inv_UI_height * 0.5 * scale);

spr_inv_UI = viewInventory;
spr_inv_items = viewItemInventory;

spr_inv_items_columns = sprite_get_width(spr_inv_items)/cell_size;
spr_inv_items_rows = sprite_get_height(spr_inv_items)/cell_size;

inv_slots = 10;
inv_slots_width = 8;
inv_slots_height = 3;

selected_slot = 0;
pickup_slot = -1;
m_slotx = 0;
m_sloty = 0;

info_x = inv_UI_x + (9 * scale);
info_y = inv_UI_y + (9 * scale);

x_buffer = 2;
y_buffer = 4;

slots_x = info_x;
slots_y = inv_UI_y + (40 * scale);

//Player info
//0 = Coin
//1 = Character's Name

ds_player_info = ds_grid_create(2,2);
ds_player_info[# 0 ,0] = "Coin";
ds_player_info[# 0 ,1] = "Character";

ds_player_info[# 1,0] = string(ObjPlayer1.Money);
ds_player_info[# 1,1] = string(ObjPlayer1.Name);

//Inventory
//0 = Item
//1 = Number

ds_inventory =	ds_grid_create(2, inv_slots);


//Items
enum item 
{
	none	= 0,
	hp		= 1,
	mp		= 2,
}

ds_inventory[# 0,0] = item.hp;
ds_inventory[# 1,0] = ObjPlayer1.NumBlood;

ds_inventory[# 0,1] = item.mp;
ds_inventory[# 1,1] = ObjPlayer1.NumEnergy;


