using app.requests.workshop as my from '../db/schema';

service ApiService  {
  @odata.draft.enabled
  entity Requests @(restrict : [
    {
        grant : [ 'CREATE' ],
        to : [ 'create' ]
    },
    {
        grant : [ 'READ', 'EDIT' ],
        where: 'createdBy = $user',
        to : [ 'selfmanage' ]
    },
    {
        grant : [ 'READ' ],
        to : [ 'read' ]
    },
    {
        grant : [ 'EDIT' ],
        to : [ 'edit' ]
    },
    {
        grant : [ 'DELETE' ],
        to : [ 'delete' ]
    }
  ]) as projection on my.Requests;
}