import Toybox.Graphics;
import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;
import Toybox.Time.Gregorian;
import Toybox.Weather;
import Toybox.Application.Properties;

class BasicWatchFaceView extends WatchUi.WatchFace {
    private var timeFont;
    private var dataFont;
    private var stepsIcon;
    private var heartIcon;
    private var battery100;
    private var battery80;
    private var battery60;
    private var battery40;
    private var battery20;
    private var battery0;
    private var charging;
    private var dateFont;
    private var clearWeather;
    private var partlyCloudyWeather;
    private var mostlyCloudyWeather;
    private var rainWeather;
    private var snowWeather;
    private var windyWeather;
    private var thunderstormsWeather;
    private var wintryMixWeather;
    private var fogWeather;
    private var hazyWeather;
    private var hailWeather;
    private var scatteredShowersWeather;
    private var scatteredThunderstormsWeather;
    private var unknownPrecipitationWeather;
    private var lightRainWeather;
    private var heavyRainWeather;
    private var lightSnowWeather;
    private var heavySnowWeather;
    private var lightRainSnowWeather;
    private var heavyRainSnowWeather;
    private var cloudyWeather;
    private var rainSnowWeather;
    private var partlyClearWeather;
    private var mostlyClearWeather;
    private var lightShowersWeather;
    private var showersWeather;
    private var heavyShowersWeather;
    private var chanceOfShowersWeather;
    private var chanceOfThunderstormsWeather;
    private var mistWeather;
    private var dustWeather;
    private var drizzleWeather;
    private var tornadoWeather;
    private var smokeWeather;
    private var iceWeather;
    private var sandWeather;
    private var squallWeather;
    private var sandstormWeather;
    private var volcanicAshWeather;
    private var hazeWeather;
    private var fairWeather;
    private var hurricaneWeather;
    private var tropicalStormWeather;
    private var chanceOfSnowWeather;
    private var chanceOfRainSnowWeather;
    private var cloudyChanceOfRainWeather;
    private var cloudyChanceOfSnowWeather;
    private var cloudyChanceOfRainSnowWeather;
    private var flurriesWeather;
    private var freezingRainWeather;
    private var sleetWeather;
    private var iceSnowWeather;
    private var thinCloudsWeather;
    private var unknownWeather;


    function initialize() {
        WatchFace.initialize();
        dataFont = Application.loadResource(Rez.Fonts.DataFont);
        timeFont = Application.loadResource(Rez.Fonts.TimeFont);
        dateFont = Application.loadResource(Rez.Fonts.DateFont);
        stepsIcon = Application.loadResource(Rez.Drawables.footsteps);
        heartIcon = Application.loadResource(Rez.Drawables.heart);
        battery100 = Application.loadResource(Rez.Drawables.battery100);
        battery80 = Application.loadResource(Rez.Drawables.battery80);
        battery60 = Application.loadResource(Rez.Drawables.battery60);
        battery40 = Application.loadResource(Rez.Drawables.battery40);
        battery20 = Application.loadResource(Rez.Drawables.battery20);
        battery0 = Application.loadResource(Rez.Drawables.battery0);
        clearWeather = Application.loadResource(Rez.Drawables.clear00);
        partlyCloudyWeather = Application.loadResource(Rez.Drawables.partlyCloudy01);
        mostlyCloudyWeather = Application.loadResource(Rez.Drawables.mostlyCloudy02);
        rainWeather = Application.loadResource(Rez.Drawables.rain03);
        snowWeather = Application.loadResource(Rez.Drawables.snow04);
        windyWeather = Application.loadResource(Rez.Drawables.windy05);
        thunderstormsWeather = Application.loadResource(Rez.Drawables.thunderstorms06);
        wintryMixWeather = Application.loadResource(Rez.Drawables.wintryMix07);
        fogWeather = Application.loadResource(Rez.Drawables.fog08);
        hazyWeather = Application.loadResource(Rez.Drawables.hazy09);
        hailWeather = Application.loadResource(Rez.Drawables.hail10);
        scatteredShowersWeather = Application.loadResource(Rez.Drawables.scatteredShowers11);
        scatteredThunderstormsWeather = Application.loadResource(Rez.Drawables.scatteredThunderstorms12);
        unknownPrecipitationWeather = Application.loadResource(Rez.Drawables.unknownPrecipitation13);
        lightRainWeather = Application.loadResource(Rez.Drawables.lightRain14);
        heavyRainWeather = Application.loadResource(Rez.Drawables.heavyRain15);
        lightSnowWeather = Application.loadResource(Rez.Drawables.lightSnow16);
        heavySnowWeather = Application.loadResource(Rez.Drawables.heavySnow17);
        lightRainSnowWeather = Application.loadResource(Rez.Drawables.lightRainSnow18);
        heavyRainSnowWeather = Application.loadResource(Rez.Drawables.heavyRainSnow19);
        cloudyWeather = Application.loadResource(Rez.Drawables.cloudy20);
        rainSnowWeather = Application.loadResource(Rez.Drawables.rainSnow21);
        partlyClearWeather = Application.loadResource(Rez.Drawables.partlyClear22);
        mostlyClearWeather = Application.loadResource(Rez.Drawables.mostlyClear23);
        lightShowersWeather = Application.loadResource(Rez.Drawables.lightShowers24);
        showersWeather = Application.loadResource(Rez.Drawables.showers25);
        heavyShowersWeather = Application.loadResource(Rez.Drawables.heavyShowers26);
        chanceOfShowersWeather = Application.loadResource(Rez.Drawables.chanceOfShowers27);
        chanceOfThunderstormsWeather = Application.loadResource(Rez.Drawables.chanceOfThunderstorms28);
        mistWeather = Application.loadResource(Rez.Drawables.mist29);
        dustWeather = Application.loadResource(Rez.Drawables.dust30);
        drizzleWeather = Application.loadResource(Rez.Drawables.drizzle31);
        tornadoWeather = Application.loadResource(Rez.Drawables.tornado32);
        smokeWeather = Application.loadResource(Rez.Drawables.smoke33);
        iceWeather = Application.loadResource(Rez.Drawables.ice34);
        sandWeather = Application.loadResource(Rez.Drawables.sand35);
        squallWeather = Application.loadResource(Rez.Drawables.squall36);
        sandstormWeather = Application.loadResource(Rez.Drawables.sandstorm37);
        volcanicAshWeather = Application.loadResource(Rez.Drawables.volcanicAsh38);
        hazeWeather = Application.loadResource(Rez.Drawables.haze39);
        fairWeather = Application.loadResource(Rez.Drawables.fair40);
        hurricaneWeather = Application.loadResource(Rez.Drawables.hurricane41);
        tropicalStormWeather = Application.loadResource(Rez.Drawables.tropicalStorm42);
        chanceOfSnowWeather = Application.loadResource(Rez.Drawables.chanceOfSnow43);
        chanceOfRainSnowWeather = Application.loadResource(Rez.Drawables.chanceOfRainSnow44);
        cloudyChanceOfRainWeather = Application.loadResource(Rez.Drawables.cloudyChanceOfRain45);
        cloudyChanceOfSnowWeather = Application.loadResource(Rez.Drawables.cloudyChanceOfSnow46);
        cloudyChanceOfRainSnowWeather = Application.loadResource(Rez.Drawables.cloudyChanceOfRainSnow47);
        flurriesWeather = Application.loadResource(Rez.Drawables.flurries48);
        freezingRainWeather = Application.loadResource(Rez.Drawables.freezingRain49);
        sleetWeather = Application.loadResource(Rez.Drawables.sleet50);
        iceSnowWeather = Application.loadResource(Rez.Drawables.iceSnow51);
        thinCloudsWeather = Application.loadResource(Rez.Drawables.thinClouds52);
        unknownWeather = Application.loadResource(Rez.Drawables.unknown53);
    }

    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.WatchFace(dc));
    }

    function onShow() as Void {
    }

    function onUpdate(dc as Dc) as Void {
        View.onUpdate(dc);
        if(!Properties.getValue("showHeart"))
        {drawHR(dc);}
        drawTime(dc);
        if(!Properties.getValue("showFootsteps"))
        {drawSteps(dc);}
        if(!Properties.getValue("showDate"))
        {drawDate(dc);}
        if(!Properties.getValue("showBattery"))
        {drawBattery(dc);}
        if(!Properties.getValue("showWeather"))
        {drawWeather(dc);}
    }

    function drawWeather(dc) {
        var weatherCond;
        var weatherIcon;
        if (Weather.getCurrentConditions() != null)
            {
                weatherCond = Weather.getCurrentConditions().condition.toNumber();
                weatherIcon = getWeatherIcon(weatherCond);
                dc.drawScaledBitmap(dc.getWidth() / 2 - dc.getWidth()/8/2, dc.getHeight() / 4, dc.getWidth()/8, dc.getHeight()/8, weatherIcon);
            }        
    }
    function drawBattery(dc) {
        var textHeight = dc.getFontHeight(timeFont);
        var myStats = System.getSystemStats(); // Correct method to get system stats
        var batteryLevel = myStats.battery; // Get the battery level
        var isCharging = myStats.charging; // Check if the device is charging

        var batteryIcon;

        // Choose the appropriate battery icon
        if (isCharging) {
            batteryIcon = charging;
        } else {
            if (batteryLevel > 80) {
                batteryIcon = battery100;
            } else if (batteryLevel > 60) {
                batteryIcon = battery80;
            } else if (batteryLevel > 40) {
                batteryIcon = battery60;
            } else if (batteryLevel > 20) {
                batteryIcon = battery40;
            } else if (batteryLevel > 5) {
                batteryIcon = battery20;
            } else {
                batteryIcon = battery0;
            }
        }
            dc.drawBitmap(dc.getWidth() / 2 - 25, dc.getHeight() / 2 + textHeight / 2, batteryIcon);
    }

    function drawTime(dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        var is12Hour = Properties.getValue("showMeridiemText");
        var timeFormat = "$1$:$2$";
        var clockTime = System.getClockTime();
        var hours = clockTime.hour;
        if (is12Hour)
        {
            var fontHeight = Graphics.getFontHeight(timeFont);
            var meridiem = clockTime.hour < 12 ? "am" : "pm";
            hours = hours > 12 ? hours - 12 : hours;
            dc.drawText(dc.getWidth() / 2, dc.getHeight() / 2 + fontHeight*0.4, 
            dateFont, 
            meridiem, 
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER );
        }
        hours = hours.format("%02d");
        var timeString = Lang.format(timeFormat, [hours, clockTime.min.format("%02d")]);
        dc.drawText(
            dc.getWidth() / 2,
            dc.getHeight() / 2,
            timeFont,
            timeString,
            Graphics.TEXT_JUSTIFY_CENTER | Graphics.TEXT_JUSTIFY_VCENTER 
        );
    }

    function drawHR(dc) {
        dc.setColor(Graphics.COLOR_WHITE, Graphics.COLOR_TRANSPARENT);
        var heartRate = retrieveHeartrateText();

        var dataWidth = dc.getTextWidthInPixels(heartRate, dataFont) + 40;
        var x = dc.getWidth() / 2 - dataWidth / 2;

        dc.drawBitmap(
            x,
            20,
            heartIcon
        );

        dc.drawText(
            x + 40,
            18,
            dataFont,
            heartRate,
            Graphics.TEXT_JUSTIFY_LEFT
        );
    }

    private function retrieveHeartrateText() {
        var info = Activity.getActivityInfo();

        if (info != null) {
            var hr = info.currentHeartRate;
            if (hr == null) {
            return "--";
            }
            return Lang.format("$1$", [hr]);
        }


        var hrIterator = ActivityMonitor.getHeartRateHistory(null, false);

        var sample = hrIterator.next();
        if (sample == null) {
            return "--";
        }
        if (sample.heartRate == ActivityMonitor.INVALID_HR_SAMPLE) {
            return "--";
        }
        
        return Lang.format("$1$", [sample.heartRate]);
    }

    function drawSteps(dc) {
        var stepCount = ActivityMonitor.getInfo().steps.toString();
        var dataWidth = dc.getTextWidthInPixels(stepCount, dataFont) + 40;
        var x = dc.getWidth() / 2 - dataWidth / 2;

        dc.drawBitmap(
            x,
            dc.getHeight() - 60,
            stepsIcon
        );

        dc.drawText(
            x + 40,
            dc.getHeight() -60,
            dataFont,
            stepCount,
            Graphics.TEXT_JUSTIFY_LEFT
        );
    }

    function drawDate(dc) {
        var now = Time.now();
        var date = Gregorian.info(now, Time.FORMAT_SHORT);
        var dateString = Lang.format("$1$, $2$ $3$", [getDayName(date.day_of_week), getMonthName(date.month), date.day]);

        dc.drawText(
            dc.getWidth() / 2,
            60,
            dateFont,
            dateString,
            Graphics.TEXT_JUSTIFY_CENTER
        );
    }

    function getDayName(dayNumber) {
        // Array of day names, assuming 1=Monday and so on
        var days = [
            "Sun", "Mon", "Tue", "Wed",
            "Thu", "Fri", "Sat"
        ];

        if (dayNumber >= 1 && dayNumber <= 7) {
            return days[dayNumber - 1];
        } else {
            return "Invalid Day";
        }
    }

    function getMonthName(monthNumber) {
        // Array of month names
        var months = [
            "Jan", "Feb", "Mar",
            "Apr", "May", "Jun",
            "Jul", "Aug", "Sep",
            "Oct", "Nov", "Dec"
        ];

        if (monthNumber >= 1 && monthNumber <= 12) {
            return months[monthNumber - 1];
        } else {
            return "Invalid Month";
        }
    }
    function onHide() as Void {
    }

    function onExitSleep() as Void {
    }

    function onEnterSleep() as Void {
    }

    function getWeatherIcon(cond) {
        switch (cond) {
            case 0:
                return clearWeather;
            case 1:
                return partlyCloudyWeather;
            case 2:
                return mostlyCloudyWeather;
            case 3:
                return rainWeather;
            case 4:
                return snowWeather;
            case 5:
                return windyWeather;
            case 6:
                return thunderstormsWeather;
            case 7:
                return wintryMixWeather;
            case 8:
                return fogWeather;
            case 9:
                return hazyWeather;
            case 10:
                return hailWeather;
            case 11:
                return scatteredShowersWeather;
            case 12:
                return scatteredThunderstormsWeather;
            case 13:
                return unknownPrecipitationWeather;
            case 14:
                return lightRainWeather;
            case 15:
                return heavyRainWeather;
            case 16:
                return lightSnowWeather;
            case 17:
                return heavySnowWeather;
            case 18:
                return lightRainSnowWeather;
            case 19:
                return heavyRainSnowWeather;
            case 20:
                return cloudyWeather;
            case 21:
                return rainSnowWeather;
            case 22:
                return partlyClearWeather;
            case 23:
                return mostlyClearWeather;
            case 24:
                return lightShowersWeather;
            case 25:
                return showersWeather;
            case 26:
                return heavyShowersWeather;
            case 27:
                return chanceOfShowersWeather;
            case 28:
                return chanceOfThunderstormsWeather;
            case 29:
                return mistWeather;
            case 30:
                return dustWeather;
            case 31:
                return drizzleWeather;
            case 32:
                return tornadoWeather;
            case 33:
                return smokeWeather;
            case 34:
                return iceWeather;
            case 35:
                return sandWeather;
            case 36:
                return squallWeather;
            case 37:
                return sandstormWeather;
            case 38:
                return volcanicAshWeather;
            case 39:
                return hazeWeather;
            case 40:
                return fairWeather;
            case 41:
                return hurricaneWeather;
            case 42:
                return tropicalStormWeather;
            case 43:
                return chanceOfSnowWeather;
            case 44:
                return chanceOfRainSnowWeather;
            case 45:
                return cloudyChanceOfRainWeather;
            case 46:
                return cloudyChanceOfSnowWeather;
            case 47:
                return cloudyChanceOfRainSnowWeather;
            case 48:
                return flurriesWeather;
            case 49:
                return freezingRainWeather;
            case 50:
                return sleetWeather;
            case 51:
                return iceSnowWeather;
            case 52:
                return thinCloudsWeather;
            case 53:
                return unknownWeather;
            default:
                return unknownWeather;
        }
    }

}
