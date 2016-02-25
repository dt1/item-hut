# This Source Code Form is subject to the terms of the Mozilla Public License, v. 2.0. If a copy of the MPL was not distributed with this file, You can obtain one at https://mozilla.org/MPL/2.0/.

from route_utils import *

@route("/orders")
def orders():
    check_user()
    orders = select_all_orders()
    return template("views/orders/orders_main", inv = True,
                    orders = orders)

@route("/orders/add-order")
@post("/orders/add-order")
def add_order():
    check_user()
    msku_list = select_valid_mskus()
    if request.POST.get("add-order"):
        order_id = request.POST.get("order-id")
        marketplace = request.POST.get("marketplace")
        msku = request.POST.get("msku")
        qty = request.POST.get("qty")
        err = insert_market_order(order_id, marketplace,msku, qty)
        if err:
            err = "Order {0} already exists".format(order_id)
        return template("views/orders/add_order",
                        msku_list = msku_list, inv = True, err = err,
                        new_order = order_id)
    return template("views/orders/add_order", msku_list = msku_list,
                    inv = True, err = None, new_order = None)