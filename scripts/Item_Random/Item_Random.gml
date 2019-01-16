table = argument[0];
ShopItem = argument[1];

instance_create_layer(table.x,table.y-10,"Item",ShopItem);

var _object = ShopItem;
return _object;


