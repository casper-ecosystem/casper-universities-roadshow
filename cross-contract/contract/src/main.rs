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
use alloc::collections::BTreeMap;
use crate::alloc::string::ToString;


// Casper crates
use casper_types::{Key, CLType, Parameter, EntryPoint, EntryPoints, EntryPointType, EntryPointAccess};

use casper_contract::{
    contract_api::{runtime, storage},
    unwrap_or_revert::UnwrapOrRevert,
};

#[no_mangle]
pub extern "C" fn update_msg() {

    let value: String = runtime::get_named_arg("message");
    // Get the uref of the message stored in global state
    let uref = runtime::get_key("message").unwrap_or_revert().into_uref().unwrap_or_revert();
    // Write the message to global state
    storage::write(uref, String::from(value));
}


#[no_mangle]
pub extern "C" fn call() {
    // Get the value of a passed parameter with the key "message"
    let value: String = runtime::get_named_arg("message");
    // The value will be wraped in a URef
    let value_ref = storage::new_uref(value);
    // Creating the new set of named keys
    // The keys are a Map of Key/Value
    let mut named_keys: BTreeMap<String, Key> = BTreeMap::new();
    // Insert the new value into the named keys
    named_keys.insert(String::from("message"),value_ref.into()); // use into to wrap the value to the key
    // Create a new vector
    let mut vec = Vec::new();
    vec.push(Parameter::new("message", CLType::String));
    // Create an Entry Point Object
    let mut entry_points = EntryPoints::new();

    // Define the metadata for the entry point `update_msg`
    entry_points.add_entry_point(EntryPoint::new(
        "update_msg",
        vec,
        CLType::Unit,
        EntryPointAccess::Public,
        EntryPointType::Contract
    ));

    // The contract is stored in the global state
    let (stored_contract_hash, _contract_version) = storage::new_contract(
        entry_points,                                       // entry points metadata
        Some(named_keys),                                   // named keys
        Some("Hello_world_package_name".to_string()),       // package name
        Some("Hello_world_access_uref".to_string())         // access uref
    );

    // To access from the account - named keys of the account
    runtime::put_key("hello_world_contract", stored_contract_hash.into());
}