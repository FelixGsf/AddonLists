function onCreate()
	if songName == "Shot Head" then
	makeAnimatedLuaSprite('rain', 'rain', -200, 0);
	setLuaSpriteScrollFactor('rain', 0.3, 0.3);
	scaleObject('rain', 1, 1);
	addLuaSprite('rain', true);
	addAnimationByPrefix('rain', 'loop', 'rain loop', 15, true);
	makeAnimatedLuaSprite('splash', 'splash', 0, defaultBoyfriendY+50);
	addAnimationByPrefix('splash', 'loop', 'splash loop', 15, true)
	setObjectOrder('splash', getObjectOrder('street')+2)
	addLuaSprite('splash', false);
end
end
function onUpdate()
	if songName ~= "Shot Head" then
		setProperty("bfPhantom.color", getColorFromHex("000000"))
		setProperty("gfPhantom.color", getColorFromHex("000000"))
		setProperty("dadPhantom.color", getColorFromHex("000000"))
	end
end
function onEvent(name,value1,value2)
	if name == "Philly Glow Recreation" and value1 == "0" then
		setObjectOrder("rain", getObjectOrder("boyfriendGroup")+4)
		setObjectOrder('splash', getObjectOrder('street')+2)
	end
end