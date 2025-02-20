class NotacionCientifica
{
    static function main()
    {
        trace(isabel(Std.parseFloat(Sys.args()[0])));
    }

    static function isabel(value:Float):String
    {
        if (value == 0) return 'El Valor no Puede ser 0';

        var result:Float = value;
        var exponentes:Float = 0;

        while (result <= 1)
        {
            result *= 10;
            
            exponentes--;
        }

        while (result >= 10)
        {
            result /= 10;

            exponentes++;
        }

        result = arreglarDecimales(result);

        return value + ' = ' + result + ' por 10 elevado a la ' + exponentes;
    }

    static function arreglarDecimales(value:Float):Float return Math.round(value * 10000) / 10000;
}