import { Component, OnInit } from '@angular/core';
import { LoadingController } from '@ionic/angular';
import { Router } from '@angular/router';
import { User } from '@supabase/supabase-js';
import { SupabaseService } from 'src/app/services/supabase.service';
import { Provider } from '@supabase/supabase-js';
@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {
  public email = '';
  public password = '';
  public emailExists = false;
  public user: User = null;
  public locale: string = null;
  constructor(
              private supabaseService: SupabaseService,
              private loadingController: LoadingController,
              private router: Router,
              ) {   
  }

  async ngOnInit() {
  }

  async signUpWithEmail() {
    const { user, session, error } = await this.supabaseService.signUpWithEmail(this.email, this.password);
    console.log('signUpWithEmail', user, session, error);
  }

  async signInWithEmail() {
    const { user, session, error } = await this.supabaseService.signInWithEmail(this.email, this.password);
    console.log('signInWithEmail', user, session, error);
  }

  async signInWithMagicLink() {
    const { user, session, error } = await this.supabaseService.sendMagicLink(this.email);
    console.log('signInWithMagicLink', user, session, error);
  }

  async signInWithProvider(provider: Provider) {
    const { user, session, error } = await this.supabaseService.signInWithProvider(provider);
    console.log('signInWithProvider', user, session, error);
  }


  async resetPassword() {
    const { data, error } = await this.supabaseService.resetPassword(this.email);
    console.log('resetPassword', data, error);
  }

  async signOut() {
    const { error } = await this.supabaseService.signOut();
    console.log('signOut', error);
  }

}
