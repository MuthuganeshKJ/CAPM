sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'myfioriapplication/test/integration/FirstJourney',
		'myfioriapplication/test/integration/pages/POsList',
		'myfioriapplication/test/integration/pages/POsObjectPage',
		'myfioriapplication/test/integration/pages/PurchaseOrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, POsList, POsObjectPage, PurchaseOrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('myfioriapplication') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThePOsList: POsList,
					onThePOsObjectPage: POsObjectPage,
					onThePurchaseOrderItemsObjectPage: PurchaseOrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);