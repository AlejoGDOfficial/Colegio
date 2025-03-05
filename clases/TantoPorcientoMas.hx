class TantoPorcientoMas
{
    static function main()
    {
        var x:Float = Std.parseFloat(Sys.args()[0]);
        var y:Float = Std.parseFloat(Sys.args()[1]);

        trace((y + 100) + '% = ' + x);
        trace('100% = ' + tantoPorcientoMas(x, y));
    }

    static function tantoPorcientoMas(x:Float, y:Float)
        return x * 100 / (100 + y);
}