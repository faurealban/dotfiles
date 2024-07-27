import { cpu_usage } from "./services.js"

export function cpu_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.CircularProgress({
                className: "CircularProgress",
                startAt: 0.75,
                endAt: 0.75,
                value: cpu_usage.bind().as(p => p / 100),
                child: Widget.Label({
                    label: "CPU"
                })
            })
        ]
    })
}
