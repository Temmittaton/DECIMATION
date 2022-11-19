ini_open("save.ini");
var _kt = ini_read_real("Controls", "keyboardType", 0);
ini_close();
if (_kt == 1){keyboardType = 1}
else {keyboardType = 0}