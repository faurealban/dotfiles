import { battery_capacity } from "./services.js"

export function battery_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.CircularProgress({
                className: "CircularProgress",
                startAt: 0.75,
                endAt: 0.75,
                value: battery_capacity.bind().as(p => p / 100),
                child: Widget.Label({
                    className: "CIcon",
                    label: "󰁹"
                })
            })
        ]
    })
}