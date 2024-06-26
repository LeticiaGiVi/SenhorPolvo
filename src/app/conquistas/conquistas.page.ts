import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
@Component({
  selector: 'app-conquistas',
  templateUrl: './conquistas.page.html',
  styleUrls: ['./conquistas.page.scss'],
})
export class ConquistasPage {

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
