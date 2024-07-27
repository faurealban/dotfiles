const USER = Utils.exec("whoami");

// battery
export const battery_capacity = Variable("", {
    poll: [10000, `/home/${USER}/.config/scripts/utils/get_battery_capacity.sh`],
})

// date and time
export const date = Variable("", {
    poll: [60000, "date '+%A\n%d\n%B'"],
})

export const time = Variable("", {
    poll: [60000, "date '+%H:%M'"],
})

// systemtray
export const cpu_usage = Variable("", {
    poll: [4000, `/home/${USER}/.config/scripts/utils/get_cpu_usage.sh`],
})

export const ram_usage = Variable("", {
    poll: [4000, `/home/${USER}/.config/scripts/utils/get_ram_usage.sh`],
})

export const disk_space = Variable("", {
    poll: [60000, `/home/${USER}/.config/scripts/utils/get_disk_space.sh`],
})
