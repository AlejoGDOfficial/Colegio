enum Genero
{
    MUJER;
    HOMBRE;
}

class AlturaPorTibia
{
    static var personas:Array<Dynamic> = [
        ['Rua', HOMBRE, 37.4],
        ['Guarnes', HOMBRE, 38.8],
        ['Gerónimo', HOMBRE, 38],
        ['Valencia', HOMBRE, 38.2]
    ];

    static function main()
    {
        if (personas.length > 0) for (data in personas) trace(data[0] + ': ' + yobani(data[1], data[2]));
    }

    static function yobani(genero:Genero, medida:Float):String
    {
        switch (genero)
        {
            case Genero.HOMBRE: return 'Altura: ' + roundDecimal((2.52 * medida + 78.62) / 100, 2) + ' metros';
            case Genero.MUJER: return 'Altura: ' + roundDecimal((2.90 * medida + 61.53) / 100, 2) + ' metros';
            default: return 'No hay Altura';
        }
    }

    static function roundDecimal(value:Float, precision:Int)
    {
        var mult:Float = 1;

        for (i in 0...precision) mult *= 10;

        return Math.fround(value * mult) / mult;
    }
}