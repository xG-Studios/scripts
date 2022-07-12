import XGStudio from 0xc357c8d061353f5f

pub fun main(ownerAddress: Address ) : [UInt64] {
    let owner = getAccount(ownerAddress);

    let col = owner.getCapability(XGStudio.CollectionPublicPath)
        .borrow<&{XGStudio.XGStudioCollectionPublic}>() ??
            panic("could not borrow receiver Reference "); 
    let ids : [UInt64] = col.getIDs();
    
    return ids;
}
