import {battery_widget} from "./modules/battery.js"
import {date_widget} from "./modules/date.js"

App.config({
    windows: [
        Widget.Window({
            child: Widget.FlowBox({
                setup(self) {
                    // properties
                    self.set_min_children_per_line(4)
                    self.set_min_children_per_line(4)
                    self.set_row_spacing(16)
                    self.set_column_spacing(16)

                    // children
                    self.add(battery_widget())
                    self.add(date_widget())
                }
            })
        })
    ],
    style: "./style.css"
})
