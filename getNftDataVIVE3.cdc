import XGStudio from 0xc357c8d061353f5f

pub fun main(nftId: UInt64 ) : {String:AnyStruct}{
    
    var nftData = XGStudio.getNFTDataById(nftId: nftId)
    var templateData =  XGStudio.getTemplateById(templateId: nftData.templateID)
    var templateImmutableData = templateData.getImmutableData()
    var nftProperties = nftData.getImmutableData()
    
    var nftMetaData : {String:AnyStruct} = {}
    
    nftProperties["activityType"] = templateImmutableData["activityType"]; 
    nftProperties["xGRewardType"] = templateImmutableData["xGRewardType"]; 
    nftProperties["competition"] = templateImmutableData["competitioa"]; 
    nftProperties["season"] = templateImmutableData["season"]; 
    nftProperties["playerTeam"] = templateImmutableData["playerTeam"]; 
    nftProperties["oppositionTeam"] = templateImmutableData["oppositionTeam"]; 
    nftProperties["date"] = templateImmutableData["date"]; 
    nftProperties["venue"] = templateImmutableData["venue"]; 
    nftProperties["result"] = templateImmutableData["result"]; 
    nftProperties["score"] = templateImmutableData["score"]; 
    nftProperties["teamGoals"] = templateImmutableData["teamGoals"]; 

    nftProperties["activityType"] = templateImmutableData["activityType"];
    nftProperties["distance"] = templateImmutableData["distance"];
    nftProperties["raceName"] = templateImmutableData["raceName"];
    nftProperties["raceDescription"] = templateImmutableData["raceDescription"];
    nftProperties["distance"] = templateImmutableData["distance"];
    nftProperties["date"] = templateImmutableData["raceDate"];
    nftProperties["raceLocation"] = templateImmutableData["raceLocation"];
    nftProperties["xGRewardType"] = templateImmutableData["nftType"];


    nftMetaData["title"] = templateImmutableData["title"];
    nftMetaData["description"] = templateImmutableData["description"];
    nftMetaData["media type"] = templateImmutableData["contentType"];
    nftMetaData["IPFS hash"] = templateImmutableData["contentUrl"];
    nftMetaData["rarity"] = "";
    nftMetaData["edition number"] = nftData.mintNumber;
    nftMetaData["maxSupply"] = templateData.maxSupply;
    nftMetaData["properties"] = nftProperties; 
   
 
    return nftMetaData
}
