function wave(from, to, duration, offset){
	var a4 = (to - from) * 0.5;
	return from + a4 + sin((((current_time * 0.001) + duration * offset) / duration) * (pi*2)) * a4;
}

function approach(val1, val2, amount) {
    if (val1 < val2) {
        return min(val1 + amount, val2);
    } else {
        return max(val1 - amount, val2);
    }
}

