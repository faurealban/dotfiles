import {date} from "./services.js"

export function date_widget() {
    return Widget.Box({
        className: "Module",
        children: [
            Widget.Label({
                label: date.bind()
            })
        ]
    })
}
