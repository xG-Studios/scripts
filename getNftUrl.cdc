import XGStudio from 0xc357c8d061353f5f

pub fun main(nftId: UInt64 ) : AnyStruct {
    
    var nftData = XGStudio.getNFTDataById(nftId: nftId)
    var templateData =  XGStudio.getTemplateById(templateId: nftData.templateID)
    var templateImmutableData = templateData.getImmutableData()
    
    return templateImmutableData["contentUrl"];
}
