sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'workshop/cf/requests/test/integration/FirstJourney',
		'workshop/cf/requests/test/integration/pages/RequestsList',
		'workshop/cf/requests/test/integration/pages/RequestsObjectPage'
    ],
    function(JourneyRunner, opaJourney, RequestsList, RequestsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('workshop/cf/requests') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheRequestsList: RequestsList,
					onTheRequestsObjectPage: RequestsObjectPage
                }
            },
            opaJourney.run
        );
    }
);