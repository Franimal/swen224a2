constant Jan is 1
constant Feb is 2
constant Mar is 3
constant Apr is 4
constant May is 5
constant Jun is 6
constant Jul is 7
constant Aug is 8
constant Sep is 9
constant Oct is 10
constant Nov is 11
constant Dec is 12

function getDate() -> (int day, int month, int year)
ensures month >= Jan && month <= Dec && ((day > 0 && day <= 29 && month == Feb) || ((day > 0 && day <= 31) && (month != Sep && month != Apr && month != Jun && month != Nov && month != Feb)) ||
    ((day > 0 && day <= 30) && (month == Sep || month == Apr || month == Jun || month == Nov))):
    return 30, 12, 2015
