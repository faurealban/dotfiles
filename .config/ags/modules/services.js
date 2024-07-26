// battery
export const battery_capacity = await Service.import("battery")

// date
export const date = Variable("", {
    poll: [1000, "date '+%A\n%d\n%B'"],
})

// systemtray
export const systemtray = await Service.import("systemtray")
