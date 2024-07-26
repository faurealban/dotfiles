import {systemtray} from "./services.js"

export function systemtray_widget() {
    //const items = systemtray.bind("items")
    //    .as(items => items.map(item => Widget.CircularProgress({
    //        startAt: 0.75,
    //        endAt: 0.75,
    //        value: item.bind("percent").as(p => p/100),
    //        child: Widget.Label({
    //            className: "CIcon",
    //            label: ""
    //        })
    //    })))

    const items = systemtray.bind("items")
        .as(items => items.map(item => Widget.Button({
            child: Widget.Icon({ icon: item.bind("icon") }),
            on_primary_click: (_, event) => item.activate(event),
            on_secondary_click: (_, event) => item.openMenu(event),
            tooltip_markup: item.bind("tooltip_markup"),
        })))

    return Widget.Box({
        className: "Module",
        children: items
    })
}
