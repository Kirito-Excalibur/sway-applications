library utils;

dep interface;

use interface::SimpleAsset;

/// Calls the `mint_to` function in another contract.
///
/// # Arguments
///
/// `amount` - The quantity of an asset to be minted.
/// `asset` - The external asset contract which has an implemented `mint_to` function.
/// `to` - The user which the asset should be given to.
pub fn mint_to(amount: u64, asset: ContractId, to: Identity) {
    let asset_abi = abi(SimpleAsset, asset.value);
    asset_abi.mint_to(amount, to);
}
