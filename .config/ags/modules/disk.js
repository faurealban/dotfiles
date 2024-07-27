import { disk_space } from "./services.js"

export function disk_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.CircularProgress({
                className: "CircularProgress",
                startAt: 0.75,
                endAt: 0.75,
                value: disk_space.bind().as(p => p / 100),
                child: Widget.Label({
                    label: "SPC"
                })
            })
        ]
    })
}
