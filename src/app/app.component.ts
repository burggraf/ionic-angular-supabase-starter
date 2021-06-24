import { Component } from '@angular/core';
import { User } from '@supabase/supabase-js';
import { SupabaseService } from './services/supabase.service';
import { Router } from '@angular/router';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  public user: User = null;

  public appPages = [

    { title: 'Home', url: 'home', icon: 'home' },
    { title: 'Customers', url: 'people', icon: 'people' },

  ];

  constructor(private supabaseService: SupabaseService, private router: Router) {
    this.supabaseService.user.subscribe((user: User) => {
      this.user = user;
    });

    // handle password recovery links
    const hash = window.location.hash;
    if (hash && hash.substr(0,1) === '#') {
      const tokens = hash.substr(1).split('&');
      const entryPayload: any = {};
      tokens.map((token) => {
        const pair = (token + '=').split('=');
        entryPayload[pair[0]] = pair[1];
      });
      if (entryPayload?.type === 'recovery') { // password recovery link
        router.navigateByUrl(`/resetpassword/${entryPayload.access_token}`);
      }
    }

  }

  async signOut() {
    const { error } = await this.supabaseService.signOut();
    console.log('signOut', error);
  }

}
