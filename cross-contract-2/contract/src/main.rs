
#![no_std]
#![no_main]

#[cfg(not(target_arch = "wasm32"))]
compile_error!("target arch should be wasm32: compile with '--target wasm32-unknown-unknown'");

// We need to explicitly import the std alloc crate and `alloc::string::String` as we are in a
// `no_std` environment.
extern crate alloc;

// The elementary types
use alloc::string::String;
use alloc::vec::Vec;
use crate::alloc::string::ToString;
use crate::runtime_args::RuntimeArgs;

// Casper crates
use casper_types::{
    contracts::NamedKeys, runtime_args, CLType, Key, ContractHash, Parameter, EntryPoint, EntryPoints, EntryPointType, EntryPointAccess};

use casper_contract::{
    contract_api::{runtime, storage},
};

// The contract key in the account named keys
const CONTRACT_HASH: &str = "hello_world_contract";

#[no_mangle]
pub extern "C" fn call_contract_2() {

    let contract_hash: ContractHash = runtime::get_named_arg::<Key>(CONTRACT_HASH)
    .into_hash()
    .map(|hash| ContractHash::new(hash))
    .unwrap();

    let new_value: String = runtime::get_named_arg("new_message");

    let _: () = runtime::call_contract(
        contract_hash,
        "update_msg",
        runtime_args! {
            // key    => value
            "message" => new_value,
        },
     );

}

#[no_mangle]
pub extern "C" fn call() {

    // Create a new vector - this will be the signature of the entrypoint
    let mut vec = Vec::new();
    vec.push(Parameter::new("new_message", CLType::String));
    vec.push(Parameter::new("hello_world_contract", CLType::Key));

    // In the named keys of the contract, add a key for the count.
    let named_keys = NamedKeys::new();

    // Create an Entry Point Object
    let mut entry_points = EntryPoints::new();

    // Add the entry point to the entry points object
    entry_points.add_entry_point(EntryPoint::new(
       "call_contract_2",
       vec,
       CLType::Unit,
       EntryPointAccess::Public,
       EntryPointType::Contract
    ));

    // The contract is stored in global state
    let (stored_contract_hash, _contract_version) = storage::new_contract(
       entry_points,                                        // entry points
       Some(named_keys),                                    // named keys
       Some("contract2_package_name".to_string()),          // package name
       Some("contract2_access_uref".to_string())            // access uref
    );

    // To access from the account - named keys of the account
    runtime::put_key("cross_contract_2", stored_contract_hash.into());

}