import * as _ from 'lodash';
import {Pipe, PipeTransform} from "@angular/core";
@Pipe({
    name: "dataFilter"
})
export class DataFilterPipe implements PipeTransform {

    transform(array: any[], query: Object): any {
        if (query) {
          console.log('filtro');
          console.log(query);
          if(query['name'])
            array = _.filter(array,row=>row.name.indexOf(query['name']) > -1)

          if(query['owner'])
            array = _.filter(array,row=>row.owner.indexOf(query['owner']) > -1)

          if(query['breed'])
            array = _.filter(array,row=>row.breed.indexOf(query['breed']) > -1)

        }
        return array;
    }
}