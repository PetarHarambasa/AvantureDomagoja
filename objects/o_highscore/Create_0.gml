//Otvaranje datoteke ide se na AppData\Local\Avanture_Domagoja
ini_open("save.ini");
kills = ini_read_real("Scores","Kills",0)
highscore = ini_read_real("Scores","Highscore",0);
ini_close();
