{appregistry,dashboard,monitorrestapi,ardsmonitoring,resourceservice,fileservice,sipuserendpointservice,limithandler,clusterconfig,userservice,
ruleservice,phonenumbertrunkservice,queuemusic,cdrprocessor,ardsliteservice,notificationservice,pbxservice,conference,templates,liteticket
eventservice,autoattendant,socialconnector,todolistservice,interactions,voxboneapi,integrationapi,qamodule,csatservice,campaignmanager
contacts,dialerapi,crmintegrations,dashboardservice,wallet,agentdialerservice,billing} = require "./resources.coffee"

{agentConsole,operatorConsole} = require "./navigations.coffee"

mongo = require 'mongodb'

MongoClient = mongo.MongoClient

url = 'mongodb://localhost:27017/testdb'

MongoClient.connect url, (err, db) ->
	if err
		console.log 'Unable to connect . Error:', err
	else
		console.log 'Connection established to', url
	
	col = db.collection('test')
	
	col.insert [appregistry,dashboard,monitorrestapi,ardsmonitoring,resourceservice,fileservice,sipuserendpointservice,limithandler,clusterconfig,userservice,
				ruleservice,phonenumbertrunkservice,queuemusic,cdrprocessor,ardsliteservice,notificationservice,pbxservice,conference,templates,liteticket
				eventservice,autoattendant,socialconnector,todolistservice,interactions,voxboneapi,integrationapi,qamodule,csatservice,campaignmanager
				contacts,dialerapi,crmintegrations,dashboardservice,wallet,agentdialerservice,billing], (err, result) ->
		if err
			console.log err
		else
			console.log 'Documents insert successfully'
	navigation =db.collection('navigations')
	
	navigation.insert [agentConsole,operatorConsole], (err, result) ->
		if err
			console.log err
		else
			console.log 'Navigations insert successfully'

		db.close()
		return
	return
