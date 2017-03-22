import { Component, OnInit } from '@angular/core';
import {Http} from "@angular/http";
@Component({
  selector: 'app-my-dogs',
  templateUrl: './my-dogs.component.html',
  styleUrls: ['./my-dogs.component.css']
})
export class MyDogsComponent implements OnInit {

    public data: any[];
    public rowsOnPage = 25;

    public qName = '';
    public qOwner = '';
    public qBreed = "";

    constructor(private http: Http) {

    }

    ngOnInit(): void {

      this.http.get("http://localhost:3000/v1/dogs")
        .subscribe((data)=> {
            setTimeout(()=> {
                this.data = data.json();
            }, 2000);
        });
        
    }

}
