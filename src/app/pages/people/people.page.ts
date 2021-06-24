import { Component, OnInit } from '@angular/core';
import { SupabaseService } from 'src/app/services/supabase.service';

@Component({
  selector: 'app-people',
  templateUrl: './people.page.html',
  styleUrls: ['./people.page.scss'],
})
export class PeoplePage implements OnInit {
  public people: any[];

  constructor(private supabaseService: SupabaseService) { }

  ngOnInit() {
    this.loadPeople();
  }

  private async loadPeople() {
    const { people, error } = await this.supabaseService.getPeople();
    if (!error) {
      this.people = people;
    }
  }
}
