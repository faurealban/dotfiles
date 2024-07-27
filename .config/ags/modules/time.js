import { time } from "./services.js"

export function time_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.Label({
                name: "time-label",
                label: time.bind()
            })
        ]
    })
}
