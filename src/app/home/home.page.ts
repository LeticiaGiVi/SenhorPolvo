import { Component } from '@angular/core';
import { Router } from '@angular/router';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(public router: Router) {}

  Home() {
    this.router.navigateByUrl("/home");
  }

  Perfil() {
    this.router.navigateByUrl("/perfil");
  }

  Metas() {
    this.router.navigateByUrl("/metas");
  }

  Configuracoes() {
    this.router.navigateByUrl("/configuracoes");
  }

  Materias() {
    this.router.navigateByUrl("/materia");
  }

}