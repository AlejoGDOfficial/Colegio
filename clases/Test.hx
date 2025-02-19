class Test
{
    static var curTime:Float = 0;

    static var framerate:Float = bound(Std.parseInt(Sys.args()[0]), 30, 240);

    static var frameTime:Float = 1 / framerate;

    static function main()
    {
        var prevTime:Float = Sys.time();

        while (curTime < 5)
        {
            var currentTime:Float = Sys.time();

            var elapsed:Float = currentTime - prevTime;

            prevTime = currentTime;

            if (elapsed < frameTime) Sys.sleep(frameTime - elapsed);

            update(elapsed);
        }
    }

    static function update(elapsed:Float)
    {
        curTime += elapsed;
    }
}