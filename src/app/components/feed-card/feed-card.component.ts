import { Component, Input, OnInit } from '@angular/core';
import { AlertService } from './../../services/alert.service';
import { FeedService } from './../../services/feed.service';

@Component({
  selector: 'app-feed-card',
  templateUrl: './feed-card.component.html',
  styleUrls: ['./feed-card.component.scss']
})
export class FeedCardComponent implements OnInit {
  @Input() loginUser: any;
  feedData: any;
  postData = {
    user_id: '',
    token: '',
    feed_id: ''
  };

  constructor(
    private feedSerivce: FeedService,
    private alertSerivce: AlertService
  ) {}

  ngOnInit() {
    this.feedSerivce.feedData$.subscribe((res: any) => {
      this.feedData = res;
    });
  }

 
}
