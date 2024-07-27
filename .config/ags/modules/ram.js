import { ram_usage } from "./services.js"

export function ram_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.CircularProgress({
                className: "CircularProgress",
                startAt: 0.75,
                endAt: 0.75,
                value: ram_usage.bind().as(p => p / 100),
                child: Widget.Label({
                    label: "RAM"
                })
            })
        ]
    })
}
