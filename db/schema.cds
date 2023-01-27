namespace app.requests.workshop;

using { cuid, managed } from '@sap/cds/common';

entity Requests: cuid, managed {
    email: String @title: 'Email';
    firstname: String @title: 'First name';
    lastname: String @title: 'Last name';
    comment: LargeString @title: 'Comments';
    title: String @title: 'Title';
}