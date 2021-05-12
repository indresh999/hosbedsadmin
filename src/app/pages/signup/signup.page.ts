import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthConstants } from './../../config/auth-constants';
import { AuthService } from './../../services/auth.service';
import { StorageService } from './../../services/storage.service';
import { ToastService } from './../../services/toast.service';

@Component({
  selector: 'app-signup',
  templateUrl: './signup.page.html',
  styleUrls: ['./signup.page.scss']
})
export class SignupPage implements OnInit {
  postData = {
    name: '',
    area: '',
    city: '',
    mobile: '',
    address: '',
    total_beds: '',
    total_o: '',
    password: '',
    latitude:0,
    longitude:0
  };

  constructor(
    private authService: AuthService,
    private toastService: ToastService,
    private storageService: StorageService,
    private router: Router
  ) {}

  ngOnInit() {}

  validateInputs() {
    let username = this.postData.name.trim();
    let password = this.postData.password.trim();
    let mobile = this.postData.mobile.trim();
    let name = this.postData.name.trim();
    return (
      this.postData.name &&
      this.postData.name &&
      this.postData.password &&
      this.postData.mobile &&
      name.length > 0 &&
      mobile.length > 0 &&
      password.length > 0
    );
  }

  signupAction() {
    if (this.validateInputs()) {
      this.authService.signup(this.postData).subscribe(
        (res: any) => {
          if (res.userData) {
            // Storing the User data.
            this.storageService
              .store(AuthConstants.AUTH, res.userData)
              .then(res => {
                this.router.navigate(['home']);
              });
          } else {
            this.toastService.presentToast(
              'Data alreay exists, please enter new details.'
            );
          }
        },
        (error: any) => {
          this.toastService.presentToast('Network Issue.');
        }
      );
    } else {
      this.toastService.presentToast(
        'Please enter name, email, username or password.'
      );
    }
  }
}
