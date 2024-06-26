import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {
    path: 'home',
    loadChildren: () => import('./home/home.module').then( m => m.HomePageModule)
  },
  {
    path: '',
    redirectTo: 'home',
    pathMatch: 'full'
  },
  {
    path: 'perfil',
    loadChildren: () => import('./perfil/perfil.module').then( m => m.PerfilPageModule)
  },
  {
    path: 'personalizar',
    loadChildren: () => import('./personalizar/personalizar.module').then( m => m.PersonalizarPageModule)
  },
  {
    path: 'conquistas',
    loadChildren: () => import('./conquistas/conquistas.module').then( m => m.ConquistasPageModule)
  },
  {
    path: 'metas',
    loadChildren: () => import('./metas/metas.module').then( m => m.MetasPageModule)
  },
  {
    path: 'materia',
    loadChildren: () => import('./materia/materia.module').then( m => m.MateriaPageModule)
  },
  {
    path: 'configuracoes',
    loadChildren: () => import('./configuracoes/configuracoes.module').then( m => m.ConfiguracoesPageModule)
  },
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
