import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ActionSheetController, AlertController, ModalController, NavParams } from '@ionic/angular';
import { AuthService } from 'src/app/services/auth.service';
import { FeedService } from 'src/app/services/feed.service';
import { ToastService } from 'src/app/services/toast.service';

@Component({
  selector: 'app-tech-details-modal',
  templateUrl: './tech-details-modal.page.html',
  styleUrls: ['./tech-details-modal.page.scss'],
})
export class TechDetailsModalPage implements OnInit {

  postData = {
    user_id: '',
    token: '',
    pid: 1,
    limit: 10,
    category:'',
    tech_id:''
  };
  techData = [];
  techName;
  speciality;
  phone;
  whatsapp;
  address;
  file;
  constructor(private router: Router, public modalController: ModalController, private feedService: FeedService,
    private toastService: ToastService, public alertController: AlertController, private auth: AuthService,
    private navParams: NavParams) { }

  ngOnInit() {
    this.postData.tech_id = this.navParams.get('tech_id');
   
  }

 
  phoneCall()
  {
    console.log("phone")
  }
  whatsApp()
  {
    console.log("whatsapp")
  }
}
