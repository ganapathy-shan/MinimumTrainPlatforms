import UIKit

let arrivals = [900, 940, 950, 1100, 1500, 1800]
let departures = [910, 1200, 1120, 1130, 1900, 2000]

let sortedArrivals = arrivals.sorted()
let sortedDepartures = departures.sorted()

var currentPlatforms : Int = 1
var minimumPlatformsNeeded : Int = 1

var i : Int = 1
var j : Int = 0
let totalTrains = sortedArrivals.count

while (i < totalTrains && j < totalTrains)
{
    if(sortedArrivals[i] <= sortedDepartures[j])
    {
        currentPlatforms = currentPlatforms + 1
        if minimumPlatformsNeeded < currentPlatforms {
            minimumPlatformsNeeded = currentPlatforms
        }
        i = i + 1
    }
    else
    {
        currentPlatforms = currentPlatforms - 1
        j = j + 1
    }
}

print(minimumPlatformsNeeded)

