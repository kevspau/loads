package;
import Sys;
final 
FGRed = 91;
final 
BGRed = 101;
final 
FGGreen = 92;
final 
BGGreen = 102;
final 
FGYellow = 93;
final
BGYellow = 103;
final
FGBlue = 94;
final
BGBlue = 104;
final
FGMagenta = 95;
final
BGMagenta = 105;
final
FGCyan = 96;
final
BGCyan = 106;
final
FGWhite = 97;
final
BGWhite = 107;
final
FGBlack = 90;
final
BGBlack = 100;

class Bar {
    private var bar:String = "";
    public function progress(percent:Float, moveBar:Bool = true):Void {
        if (moveBar) {
            bar += "\u2588";
        }
        Sys.print("\r\033[94m(" + Std.string(percent) + "%)\033[0m  \033[32m" + bar + "\033[0m");
    }
    public function printColored(s:String, foreground:Int = 97, background:Int = 0):Void {
        Sys.println("\033[" + Std.string(background) + ";" + Std.string(foreground) + "m" + s + "\033[0m"); //look in stdlib for possible .tostring() function(idk haxe stdlib looks kinda bad for anytihng non-transpiling or gaming tbh)
    }
    public function new() {}
}
