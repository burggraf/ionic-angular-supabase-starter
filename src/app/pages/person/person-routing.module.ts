import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { PersonPage } from './person.page';

const routes: Routes = [
  {
    path: '',
    component: PersonPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class PersonPageRoutingModule {}
