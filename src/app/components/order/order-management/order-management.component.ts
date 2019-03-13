import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { OrderService } from '../../../services/order.service';
import { Order } from '../../../models/Order';

@Component({
    selector: 'app-order-management',
    templateUrl: './order-management.component.html',
    styleUrls: ['./order-management.component.css']
})
export class OrderManagementComponent implements OnInit {
    public orders: Array<Order>;

    constructor(private orderService: OrderService, private router: Router) { }

    ngOnInit() {
        this.orderService.orderList().subscribe((response) => {
            this.orders = response;
            console.log('La grandezza e\'' + this.orders.length);
        });
    }

    removeLink(orderId: number) {
        /** this.router.navigateByUrl('/delete?orderId=' + orderId); */
        this.orderService.deleteOrder(orderId);
        /** this.router.navigateByUrl('/Order/orderManagement'); */
    }

    updateLink(orderId: string) {
        this.router.navigateByUrl('/Order/update/' + orderId);
    }

    insertLink() {
        this.router.navigateByUrl('/Order/insert');
    }
}

