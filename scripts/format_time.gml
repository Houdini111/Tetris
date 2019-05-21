///format_time(time)
var _t = argument0;
var _ms = _t % 100;
if(_ms >= 10) { _ms = string(_ms); }
else { _ms = "0"+string(_ms); }
var _s = floor(_t/100);
var _m = floor(_s / 60);
_s %= 60;
if(_s >= 10) { _s = string(_s); }
else { _s = "0"+string(_s); }
if(_m > 60)
{
    var _h = floor(_m / 60);
    _m %= 60;
    if(_m >= 10) { _m = string(_m); }
    else { _m = "0"+string(_m); }
    if(_h > 24)
    {
        var _d = floor(_h / 24);
        _h %= 24;
        if(_h >= 10) { _h = string(_h); }
        else { _h = "0"+string(_h); }
        return string(_d)+":"+string(_h)+":"+string(_m)+":"+string(_s)+"."+string(_ms);
    }
    return string(_h)+":"+string(_m)+":"+string(_s)+"."+string(_ms);
}
if(_m >= 10) { _m = string(_m); }
else { _m = "0"+string(_m); }
return string(_m)+":"+string(_s)+"."+string(_ms);
