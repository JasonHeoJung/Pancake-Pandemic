

if (!fadeout) a = max(a-0.005,0); 
else a = min(a+0.005,1);

l += 0.5;

print = string_copy(str,1,l);
if (l > string_length(str) + 100) && (next < array_length(texts) - 1)
{
	l = 0;
	next++;
	if (next == array_length(texts) - 1) room_goto_next();
}
str = texts[next]

if (keyboard_check_direct(vk_space))
{
	holdspace++;
}

if (holdspace > 80) fadeout = 1;

if (a == 1) && (fadeout == 1)
{
	room_goto(rm_title_screen);
}