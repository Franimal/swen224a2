type Time is { int hours, int minutes } 
// There are exactly 24 hours in a day, and 60 minutes in an hour
where hours >= 0 && hours < 24 && minutes >= 0 && minutes < 60

function tick(Time t) -> (Time r):
    t.minutes = t.minutes + 1
    if t.minutes == 60:
        t.minutes = 0
        t.hours = t.hours + 1
    return t
