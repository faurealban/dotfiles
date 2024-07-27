import { battery_widget } from "./modules/battery.js"
import { cpu_widget } from "./modules/cpu.js"
import { ram_widget } from "./modules/ram.js"
import { disk_widget } from "./modules/disk.js"
import { date_widget } from "./modules/date.js"
import { time_widget } from "./modules/time.js"

App.config({
    windows: [
        Widget.Window({
            name: "main-window",
            layer: "overlay",
            child: Widget.FlowBox({
                setup(self) {
                    // properties
                    self.set_min_children_per_line(4)
                    self.set_min_children_per_line(4)
                    self.set_row_spacing(16)
                    self.set_column_spacing(16)

                    // children
                    self.add(battery_widget())
                    self.add(cpu_widget())
                    self.add(ram_widget())
                    self.add(disk_widget())
                    self.add(date_widget())
                    self.add(time_widget())
                }
            })
        })
    ],
    style: "./style.css"
})
