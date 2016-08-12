type Money is {
    int dollars,    // number of dollar coins
    int fiftyCents  // number of fifty cent pieces
}

function giveChange(int fiveDollarNotes, Money cost) -> (Money r)
// Money provided for payment must be greater than cost of item
requires fiveDollarNotes * 500 >= cost.dollars * 100 + cost.fiftyCents * 50
// Amount of change returned must give total after cost
ensures (r.dollars + cost.dollars) * 100
        + (r.fiftyCents + cost.fiftyCents) * 50 == fiveDollarNotes * 500:
    int totalCost = cost.dollars * 100 + cost.fiftyCents * 50
    int remainder = fiveDollarNotes * 500 - totalCost
    int d = remainder / 100
    remainder = remainder - d*100
    int f = remainder / 50
    return {dollars: d, fiftyCents: f}
