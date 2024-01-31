import { Component } from '@angular/core';
import { LayoutHeaderComponent } from '../../shared/components/layouts/layout-header/layout-header.component';

@Component({
  selector: 'app-catalog',
  standalone: true,
  imports: [LayoutHeaderComponent],
  templateUrl: './catalog.component.html',
  styleUrl: './catalog.component.css',
})
export class CatalogComponent {}
