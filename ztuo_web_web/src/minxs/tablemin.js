const tableMixins = {
    computed: {
        currentOrder() {
            // let rows = [];
            const self = this;
            const arr = [];
            // columns: [
            arr.push({
                type: "expand",
                width: 40,
                render: (h, params) => {
                    return h(expandRow, {
                        props: {
                            skin: params.row.skin,
                            rows: params.row.detail
                        }
                    });
                }
            });
            arr.push({
                title: self.$t("exchange.time"),
                key: "time",
                render: (h, params) => {
                    return h("span", {}, this.dateFormat(params.row.time));
                }
            });
            arr.push({
                title: self.$t("coin.deal"),
                key: "symbol"
            });
            arr.push({
                title: self.$t("coin.trigger"),
                key: "triggerPrice"
            });
            arr.push({
                title: self.$t("coin.type"),
                render(h, params) {
                    return h(
                        "span", {}, map.get(params.row.type)
                    );
                }
            });
            arr.push({
                title: self.$t("exchange.direction"),
                key: "direction",
                render: (h, params) => {
                    const row = params.row;
                    const className = row.direction.toLowerCase();
                    return h(
                        "span", {
                            attrs: {
                                class: className
                            }
                        },
                        row.direction == "BUY" ?
                        self.$t("exchange.buyin") :
                        self.$t("exchange.sellout")
                    );
                }
            })
            arr.push({
                title: self.$t("exchange.price"),
                key: "price",
                render(h, params) {
                    return h("span", self.toFloor(params.row.price));
                }
            });
            arr.push({
                title: self.$t("exchange.num"),
                key: "amount",
                render(h, params) {
                    return h("span", self.toFloor(params.row.amount));
                }
            });
            arr.push({
                title: self.$t("exchange.traded"),
                key: "tradedAmount",
                render(h, params) {
                    return h("span", self.toFloor(params.row.tradedAmount));
                }
            });
            arr.push({
                title: self.$t("coin.amount"),
                key: "turnover",
                render(h, params) {
                    return h("span", self.toFloor(params.row.turnover));
                }
            })
            arr.push({
                title: self.$t("exchange.action"),
                key: "operate",
                width: 110,
                render: (h, params) => {
                    return h(
                        "Button", {
                            props: {
                                size: "small",
                                type: "warning"
                            },
                            style: {},
                            on: {
                                click: () => {
                                    // console.log("======开始撤单")
                                    this.cancel(params.index);
                                }
                            }
                        },
                        self.$t("exchange.undo")
                    );
                }
            });
            // ],

            return {
                columns: arr,
                rows: []
            };

        },
        historyOrder() {
            const self = this;
            let rows = [];
            let pageSize = 10;
            let total = 10;
            let page = 1;
            const historyArr = [];
            historyArr.push({
                type: "expand",
                width: 40,
                render: (h, params) => {
                    return h(expandRow, {
                        props: {
                            skin: params.row.skin,
                            rows: params.row.detail
                        }
                    });
                }
            });
            historyArr.push({
                title: self.$t("exchange.time"),
                key: "time",
                render: (h, params) => {
                    return h("span", {}, this.dateFormat(params.row.time));
                }
            });
            historyArr.push({
                title: self.$t("coin.deal"),
                key: "symbol"
            });
            historyArr.push({
                title: self.$t("coin.type"),
                render(h, params) {
                    return h(
                        "span", {}, map.get(params.row.type)
                    );
                }
            });
            historyArr.push({
                title: self.$t("exchange.direction"),
                key: "direction",
                render: (h, params) => {
                    const row = params.row;
                    const className = row.direction.toLowerCase();
                    return h(
                        "span", {
                            attrs: {
                                class: className
                            }
                        },
                        row.direction == "BUY" ?
                        self.$t("exchange.buyin") :
                        self.$t("exchange.sellout")
                    );
                }
            });
            historyArr.push({
                title: self.$t("exchange.price"),
                key: "price",
                render(h, params) {
                    return h("span", self.toFloor(params.row.price));
                }
            });
            historyArr.push({
                title: self.$t("exchange.num"),
                key: "amount",
                render(h, params) {
                    return h("span", self.toFloor(params.row.amount));
                }
            });
            historyArr.push({
                title: self.$t("exchange.done"),
                key: "tradedAmount",
                render(h, params) {
                    return h("span", self.toFloor(params.row.tradedAmount));
                }
            });
            historyArr.push({
                title: self.$t("coin.amount"),
                key: "turnover",
                render(h, params) {
                    return h("span", self.toFloor(params.row.turnover));
                }
            });
            historyArr.push({
                title: self.$t("exchange.status"),
                key: "status",
                render: (h, params) => {
                    const status = params.row.status;
                    if (status == "COMPLETED") {
                        return h(
                            "span", {
                                style: {
                                    color: "#3399ff"
                                }
                            },
                            self.$t("exchange.finished")
                        );
                    } else if (status == "CANCELED") {
                        return h(
                            "span", {
                                style: {
                                    color: "#3399ff"
                                }
                            },
                            self.$t("exchange.canceled")
                        );
                    } else {
                        return h("span", {}, "--");
                    }
                }
            });
            return {
                rows,
                pageSize,
                total,
                page,
                columns: historyArr
            }
        },
        btnList() {
            const arr = [];
            arr.push({
                text: this.$t("exchange.limited_price"),
                check: true
            });
            arr.push({
                text: this.$t("exchange.market_price"),
                check: false
            });
            arr.push({
                text: this.$t("coin.stop"),
                // text:  "止盈止损",
                check: false
            });
            return arr;
        }
    }
}

export {
    tableMixins
}