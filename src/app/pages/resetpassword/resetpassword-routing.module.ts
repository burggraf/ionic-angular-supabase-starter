import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';

import { ResetpasswordPage } from './resetpassword.page';

const routes: Routes = [
  {
    path: '',
    component: ResetpasswordPage
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule],
})
export class ResetpasswordPageRoutingModule {}
