import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { SupabaseService } from 'src/app/services/supabase.service';


@Component({
  selector: 'app-resetpassword',
  templateUrl: './resetpassword.page.html',
  styleUrls: ['./resetpassword.page.scss'],
})
export class ResetpasswordPage implements OnInit {
  private token: string;
  public password: string = '';
  constructor(
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private supabaseService: SupabaseService
  ) { }

  ngOnInit() {
    this.token = this.activatedRoute.snapshot.paramMap.get('token');
    if (!this.token || this.token.length === 0) {
      this.router.navigateByUrl('/login');
    }
  }

  async submit() {
    const { data, error } = await this.supabaseService.updatePassword(this.token, this.password);
    if (!error) {
      this.router.navigateByUrl('/login');
    } else {
      console.error('updatePassword error', error);
    }
  }
}
