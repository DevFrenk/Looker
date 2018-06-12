connection: "myparcelshadowdb"

# include all the views
include: "*.view"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

# include all the dashboards
include: "*.dashboard"

explore: shipments {}
