import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';
import { SupabaseService } from 'src/app/services/supabase.service';

@Component({
  selector: 'app-person',
  templateUrl: './person.page.html',
  styleUrls: ['./person.page.scss'],
})
export class PersonPage implements OnInit {
  private id: string;
  public person: any;
  public cars: any[];

  constructor(
    private activatedRoute: ActivatedRoute,
    private router: Router,
    private supabaseService: SupabaseService
  ) { }

  async ngOnInit() {
    this.id = this.activatedRoute.snapshot.paramMap.get('id');
    if (!this.id || this.id.length === 0) {
      this.router.navigateByUrl('/people');
    }
    console.log('id', this.id);
    const { person, error } = await this.supabaseService.getPerson(this.id);
    if (!error) {
      this.person = person;
      const { cars, error } = await this.supabaseService.getCars(this.person.id);
      if (!error) {
        this.cars = cars;
      } else {
        console.error('getCars error', error);
      }
    } else {
      console.error('getPerson error', error);
    }
  }

}
