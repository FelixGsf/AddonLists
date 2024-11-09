local felixOffssets = {}
local mariOffsets = {300,500}
function onCreate()
    roles = getPropertyFromClass("ClientPrefs", "myLove",true)
    local shaders = getPropertyFromClass("ClientPrefs", "shaders",false);
    makeLuaSprite("bg","BackGrounds/W1/skyShade",-350,0);
    scaleObject("bg", 1.3, 1.3);
    addLuaSprite("bg");
    makeLuaSprite("city","BackGrounds/W1/cityShade",-300,0);
    setScrollFactor("city", 0.8, 0.8);
    scaleObject("bg", 1.3, 1.3);
    addLuaSprite("city");
    makeLuaSprite("street","BackGrounds/W1/streetShade",-300,-160);
    scaleObject("street", 1.3, 1.3);
    addLuaSprite("street");
    if songName == "shot head" or songName == "Shot Head" or songName == "insane" or songName == "Insane Remix" then
        if shadersEnabled then
addLuaScript("data/reflection")
makeLuaSprite("moon_light","moon_light_noAlpha",-320,0);
setScrollFactor("moon_light", 0.5, 0.5)
scaleObject("moon_light", 1.4, 1.4)
setProperty('moon_light.alpha',0.15)
--addLuaSprite("moon_light",true)
    end
end
    if not lowQuality then
        makeAnimatedLuaSprite("ligh","BackGrounds/W1/win0",-300,0);
        addAnimationByPrefix("ligh", "idle", "win",24,true);
        setScrollFactor("ligh",0.8,0.8);
        setObjectOrder("ligh", getObjectOrder("city")+1)
        addLuaSprite("ligh")
    end
    if songName == "anorexic" then
        makeLuaSprite("bg","BackGrounds/W1/sky",-300,0);
        scaleObject("bg", 1.3, 1.3);
        addLuaSprite("bg");
        makeLuaSprite("city","BackGrounds/W1/city",-300,0);
        setScrollFactor("city", 0.8, 0.8);
        scaleObject("bg", 1.3, 1.3);
        addLuaSprite("city");
        makeLuaSprite("lights","BackGrounds/W1/behindTrain",-300,-150);
        scaleObject("lights", 1.2, 1.2,true)
        addLuaSprite("lights")
        makeLuaSprite("street","BackGrounds/W1/street",-300,-160);
        scaleObject("street", 1.3, 1.3);
        addLuaSprite("street");
    end
end
function onEvent(name, value1, value2)
if name == "Philly Glow Recreation" then
    if value1 == "0" then
      --  setObjectOrder("moon_light", getObjectOrder("boyfriendGroup")+6); --esto arregla el error del bloom se hace atras de los personajes
end
end
end
function onCreatePost()
    if roles then
    if songName == "anorexic" or roles == true then
    setProperty("boyfriend.y", 280)
    setProperty("dad.y",280)
    setProperty("gf.y",280)

    end
    if songName == "insane" or songName == "shot head" or "Shot Head" and roles == true  then
        setProperty("boyfriend.y", 280)
        setProperty("bfPhantom.y", 1300)
        setProperty("dad.y", 280)
        setProperty("dadPhantom.y", 1300)
        setProperty("gf.y", 270)
        setProperty("gfPhantom.y", 1200)
end
end
end
function onUpdate()
    setProperty("icon.color",getProperty("iconP1.color"))
    setProperty("iconP1.color",getProperty("boyfriend.color"))
    setProperty("iconP2.color",getProperty("boyfriend.color"))
    setProperty("icon.alpha",getProperty("iconP1.alpha"))
    
end