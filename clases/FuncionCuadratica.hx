class FuncionCuadratica
{
    static function main()
    {
        var a:Float = Std.parseFloat(Sys.args()[0]);
        var b:Float = Std.parseFloat(Sys.args()[1]);
        var c:Float = Std.parseFloat(Sys.args()[2]);
        var x:Float = Std.parseFloat(Sys.args()[3]);

        if (Sys.args().length < 4)
        {
            trace('a: ' + a + '\tb: ' + b + '\tc: ' + c);
            
            var posVertice:Array<Float> = vertice(a, b, c);
    
            trace('Vértice: ' + posVertice);
    
            for (i in -2...3)
                trace('f (' + arreglarDecimales(posVertice[0] + i) + ') = ' + cuadratica(arreglarDecimales(posVertice[0] + i), a, b, c));
    
            trace('Ignorando el Vértice');
    
            for (i in -2...3)
                trace('f (' + i + ') = ' + cuadratica(i, a, b, c));
        } else {
            trace('f (' + x + ') = ' + cuadratica(x, a, b, c));
        }
    }

    static function vertice(a:Float, b:Float, c:Float):Array<Float>
    {
        var h:Float = (-b) / (2 * a);

        var k:Float = cuadratica(h, a, b, c);

        return [arreglarDecimales(h), arreglarDecimales(k)];
    }

    static function cuadratica(x:Float, a:Float, b:Float, c:Float):Float
        return arreglarDecimales(a * Math.pow(x, 2) + b * x + c);

    static function arreglarDecimales(float:Float):Float
        return Math.round(float * 100000) / 100000;
}