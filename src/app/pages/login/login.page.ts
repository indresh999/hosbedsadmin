import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthConstants } from '../../config/auth-constants';
import { AuthService } from './../../services/auth.service';
import { StorageService } from './../../services/storage.service';
import { ToastService } from './../../services/toast.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss']
})
export class LoginPage implements OnInit {
  postData = {
    mobile: '',
    password:''
  };

  constructor(
    private router: Router,
    private authService: AuthService,
    private storageService: StorageService,
    private toastService: ToastService
  ) {}

  ngOnInit() {}

  validateInputs() {
    console.log(this.postData);
    let password = this.postData.password.trim();
    let mobile = this.postData.mobile.trim();
    return (
      this.postData.mobile &&
      this.postData.password &&
      password.length > 0 &&
      mobile.length > 0
    );
  }

  loginAction() {
    if (this.validateInputs()) {
      this.authService.login(this.postData).subscribe(
        (res: any) => {
          if (res.data) {
            console.log(res)
            // Storing the User data.
            this.storageService
              .store(AuthConstants.AUTH, res.data)
              .then(res => {
                this.router.navigate(['home']);
              });
          } else {
            this.toastService.presentToast('Incorrect mobile and password.');
          }
        },
        (error: any) => {
          this.toastService.presentToast('Network Issue.');
        }
      );
    } else {
      this.toastService.presentToast(
        'Please enter mobile or password.'
      );
    }
  }
}
