import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { SupabaseService } from 'src/app/services/supabase.service';

@Component({
  selector: 'app-car',
  templateUrl: './car.page.html',
  styleUrls: ['./car.page.scss'],
})
export class CarPage implements OnInit {
  private id: string;
  public car: any;

  constructor(
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private supabaseService: SupabaseService
  ) { }

  async ngOnInit() {
    this.id = this.activatedRoute.snapshot.paramMap.get('id');
    console.log('id', this.id);
    if (!this.id || this.id.length === 0) {
      this.router.navigateByUrl('/people');
    }
    const { car, error } = await this.supabaseService.getCar(this.id);
    if (!error) {
      this.car = car;
    } else {
      console.error('getCar error', error);
    }
  }

}
