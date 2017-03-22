import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { HttpModule } from '@angular/http';
import { DataTableModule } from "angular2-datatable";
import { DataFilterPipe } from "./data-filter.pipe";
import { AppComponent } from './app.component';
import { MyDogsComponent } from './my-dogs/my-dogs.component';

@NgModule({
  declarations: [
    AppComponent,
    DataFilterPipe,
    MyDogsComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    DataTableModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
