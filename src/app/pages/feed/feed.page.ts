import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { ModalController } from '@ionic/angular';
import { FeedService } from 'src/app/services/feed.service';
import { LocationModalPage } from '../location-modal/location-modal.page';
import { TechDetailsModalPage } from '../tech-details-modal/tech-details-modal.page';
import { AuthService } from './../../services/auth.service';
import { ToastService } from './../../services/toast.service';
import { Geolocation } from '@ionic-native/geolocation/ngx';
import { AndroidPermissions } from '@ionic-native/android-permissions/ngx';
import { LocationAccuracy } from '@ionic-native/location-accuracy/ngx';
import { BedsDetailsModalPage } from '../beds-details-modal/beds-details-modal.page';
import { CallNumber } from '@ionic-native/call-number/ngx';


@Component({
  selector: 'app-feed',
  templateUrl: './feed.page.html',
  styleUrls: ['./feed.page.scss']
})
export class FeedPage implements OnInit {

  public authUser: any;
  ishidden = false;
  page_number = 1;
  allCategory = [];
  allCategory2 = [];
  banner = [];
  postData = {
    name:'',
    mobile: '',
    total_beds:0,
    total_o:0,
    avail_beds:0,
    avail_o:0
  };

  detailsData:any= [];
  constructor(
    private auth: AuthService,
    private feedService: FeedService,
    private toastService: ToastService,
    private router: Router,
  ) {

  }

  ngOnInit() {
    this.auth.userData$.subscribe((res: any) => {
      this.authUser = res;
      this.postData.mobile = this.authUser.mobile
      console.log(this.authUser);
     
    });
  }

  ionViewWillEnter()
  {
    this.getHospitalDetailByMobile();
  }
  updateDetails()
  {
    this.feedService.updateDetails(this.postData).subscribe(
      (res: any) => {
       if(res.data)
       {
        this.toastService.presentToast('Details updated..');
       }   
      },
      (error: any) => {
        this.toastService.presentToast('Somthing wrong..');
      }
    );
  }

  getHospitalDetailByMobile() {

      this.feedService.getHospitalDetailByMobile(this.postData).subscribe(
        (res: any) => {
          if (res.data) {
           
            this.detailsData = res.data;
            this.postData.name = this.detailsData[0].name;
            this.postData.mobile = this.detailsData[0].mobile;
            this.postData.total_beds = this.detailsData[0].total_beds;
            this.postData.avail_beds = this.detailsData[0].avail_beds;
            this.postData.total_o = this.detailsData[0].total_o;
            this.postData.avail_o = this.detailsData[0].avail_o;
          } 
        },
        (error: any) => {
          this.toastService.presentToast('Network Issue.');
        }
      );
  }
}
