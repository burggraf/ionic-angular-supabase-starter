import { Component } from '@angular/core';
import { User } from '@supabase/supabase-js';
import { SupabaseService } from './services/supabase.service';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  public user: User = null;

  public appPages = [

    { title: 'Home', url: 'home', icon: 'home' }
  ];

  constructor(private supabaseService: SupabaseService) {
    this.supabaseService.user.subscribe((user: User) => {
      this.user = user;
    });  
  }

  async signOut() {
    const { error } = await this.supabaseService.signOut();
    console.log('signOut', error);
  }

}
