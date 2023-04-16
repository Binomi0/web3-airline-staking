# Solidity API

## AirlineCoin

### Contract
AirlineCoin : contracts/AirlineCoin.sol

 --- 
### Functions:
### constructor

```solidity
constructor(string _name, string _symbol) public
```

inherits ERC20Base:
### mintTo

```solidity
function mintTo(address _to, uint256 _amount) public virtual
```

@notice          Lets an authorized address mint tokens to a recipient.
 @dev             The logic in the `_canMint` function determines whether the caller is authorized to mint tokens.

 @param _to       The recipient of the tokens to mint.
 @param _amount   Quantity of tokens to mint.

### burn

```solidity
function burn(uint256 _amount) external virtual
```

@notice          Lets an owner a given amount of their tokens.
 @dev             Caller should own the `_amount` of tokens.

 @param _amount   The number of tokens to burn.

### _canSetContractURI

```solidity
function _canSetContractURI() internal view virtual returns (bool)
```

_Returns whether contract metadata can be set in the given execution context._

### _canMint

```solidity
function _canMint() internal view virtual returns (bool)
```

_Returns whether tokens can be minted in the given execution context._

### _canSetOwner

```solidity
function _canSetOwner() internal view virtual returns (bool)
```

_Returns whether owner can be set in the given execution context._

inherits ERC20Permit:
### permit

```solidity
function permit(address owner, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) public virtual
```

_See {IERC20Permit-permit}._

### nonces

```solidity
function nonces(address owner) public view virtual returns (uint256)
```

_See {IERC20Permit-nonces}._

### DOMAIN_SEPARATOR

```solidity
function DOMAIN_SEPARATOR() public view returns (bytes32)
```

_See {IERC20Permit-DOMAIN_SEPARATOR}._

### _useNonce

```solidity
function _useNonce(address owner) internal virtual returns (uint256 current)
```

_"Consume a nonce": return the current value and increment.

_Available since v4.1.__

inherits IERC20Permit:
inherits ERC20:
### name

```solidity
function name() public view virtual returns (string)
```

_Returns the name of the token._

### symbol

```solidity
function symbol() public view virtual returns (string)
```

_Returns the symbol of the token, usually a shorter version of the
name._

### decimals

```solidity
function decimals() public view virtual returns (uint8)
```

_Returns the number of decimals used to get its user representation.
For example, if `decimals` equals `2`, a balance of `505` tokens should
be displayed to a user as `5.05` (`505 / 10 ** 2`).

Tokens usually opt for a value of 18, imitating the relationship between
Ether and Wei. This is the value {ERC20} uses, unless this function is
overridden;

NOTE: This information is only used for _display_ purposes: it in
no way affects any of the arithmetic of the contract, including
{IERC20-balanceOf} and {IERC20-transfer}._

### totalSupply

```solidity
function totalSupply() public view virtual returns (uint256)
```

_See {IERC20-totalSupply}._

### balanceOf

```solidity
function balanceOf(address account) public view virtual returns (uint256)
```

_See {IERC20-balanceOf}._

### transfer

```solidity
function transfer(address to, uint256 amount) public virtual returns (bool)
```

_See {IERC20-transfer}.

Requirements:

- `to` cannot be the zero address.
- the caller must have a balance of at least `amount`._

### allowance

```solidity
function allowance(address owner, address spender) public view virtual returns (uint256)
```

_See {IERC20-allowance}._

### approve

```solidity
function approve(address spender, uint256 amount) public virtual returns (bool)
```

_See {IERC20-approve}.

NOTE: If `amount` is the maximum `uint256`, the allowance is not updated on
`transferFrom`. This is semantically equivalent to an infinite approval.

Requirements:

- `spender` cannot be the zero address._

### transferFrom

```solidity
function transferFrom(address from, address to, uint256 amount) public virtual returns (bool)
```

_See {IERC20-transferFrom}.

Emits an {Approval} event indicating the updated allowance. This is not
required by the EIP. See the note at the beginning of {ERC20}.

NOTE: Does not update the allowance if the current allowance
is the maximum `uint256`.

Requirements:

- `from` and `to` cannot be the zero address.
- `from` must have a balance of at least `amount`.
- the caller must have allowance for ``from``'s tokens of at least
`amount`._

### increaseAllowance

```solidity
function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool)
```

_Atomically increases the allowance granted to `spender` by the caller.

This is an alternative to {approve} that can be used as a mitigation for
problems described in {IERC20-approve}.

Emits an {Approval} event indicating the updated allowance.

Requirements:

- `spender` cannot be the zero address._

### decreaseAllowance

```solidity
function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool)
```

_Atomically decreases the allowance granted to `spender` by the caller.

This is an alternative to {approve} that can be used as a mitigation for
problems described in {IERC20-approve}.

Emits an {Approval} event indicating the updated allowance.

Requirements:

- `spender` cannot be the zero address.
- `spender` must have allowance for the caller of at least
`subtractedValue`._

### _transfer

```solidity
function _transfer(address from, address to, uint256 amount) internal virtual
```

_Moves `amount` of tokens from `sender` to `recipient`.

This internal function is equivalent to {transfer}, and can be used to
e.g. implement automatic token fees, slashing mechanisms, etc.

Emits a {Transfer} event.

Requirements:

- `from` cannot be the zero address.
- `to` cannot be the zero address.
- `from` must have a balance of at least `amount`._

### _mint

```solidity
function _mint(address account, uint256 amount) internal virtual
```

_Creates `amount` tokens and assigns them to `account`, increasing
the total supply.

Emits a {Transfer} event with `from` set to the zero address.

Requirements:

- `account` cannot be the zero address._

### _burn

```solidity
function _burn(address account, uint256 amount) internal virtual
```

_Destroys `amount` tokens from `account`, reducing the
total supply.

Emits a {Transfer} event with `to` set to the zero address.

Requirements:

- `account` cannot be the zero address.
- `account` must have at least `amount` tokens._

### _approve

```solidity
function _approve(address owner, address spender, uint256 amount) internal virtual
```

_Sets `amount` as the allowance of `spender` over the `owner` s tokens.

This internal function is equivalent to `approve`, and can be used to
e.g. set automatic allowances for certain subsystems, etc.

Emits an {Approval} event.

Requirements:

- `owner` cannot be the zero address.
- `spender` cannot be the zero address._

### _spendAllowance

```solidity
function _spendAllowance(address owner, address spender, uint256 amount) internal virtual
```

_Spend `amount` form the allowance of `owner` toward `spender`.

Does not update the allowance amount in case of infinite allowance.
Revert if not enough allowance is available.

Might emit an {Approval} event._

### _beforeTokenTransfer

```solidity
function _beforeTokenTransfer(address from, address to, uint256 amount) internal virtual
```

_Hook that is called before any transfer of tokens. This includes
minting and burning.

Calling conditions:

- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
will be transferred to `to`.
- when `from` is zero, `amount` tokens will be minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens will be burned.
- `from` and `to` are never both zero.

To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks]._

### _afterTokenTransfer

```solidity
function _afterTokenTransfer(address from, address to, uint256 amount) internal virtual
```

_Hook that is called after any transfer of tokens. This includes
minting and burning.

Calling conditions:

- when `from` and `to` are both non-zero, `amount` of ``from``'s tokens
has been transferred to `to`.
- when `from` is zero, `amount` tokens have been minted for `to`.
- when `to` is zero, `amount` of ``from``'s tokens have been burned.
- `from` and `to` are never both zero.

To learn more about hooks, head to xref:ROOT:extending-contracts.adoc#using-hooks[Using Hooks]._

inherits IERC20Metadata:
inherits IERC20:
inherits Ownable:
### owner

```solidity
function owner() public view returns (address)
```

@notice Returns the owner of the contract.

### setOwner

```solidity
function setOwner(address _newOwner) external
```

@notice Lets an authorized wallet set a new owner for the contract.
 @param _newOwner The address to set as the new owner of the contract.

### _setupOwner

```solidity
function _setupOwner(address _newOwner) internal
```

_Lets a contract admin set a new owner for the contract. The new owner must be a contract admin._

inherits IOwnable:
inherits Multicall:
### multicall

```solidity
function multicall(bytes[] data) external virtual returns (bytes[] results)
```

@notice Receives and executes a batch of function calls on this contract.
 @dev Receives and executes a batch of function calls on this contract.

 @param data The bytes data that makes up the batch of function calls to execute.
 @return results The bytes data that makes up the result of the batch of function calls executed.

inherits IMulticall:
inherits ContractMetadata:
### setContractURI

```solidity
function setContractURI(string _uri) external
```

@notice         Lets a contract admin set the URI for contract-level metadata.
 @dev            Caller should be authorized to setup contractURI, e.g. contract admin.
                 See {_canSetContractURI}.
                 Emits {ContractURIUpdated Event}.

 @param _uri     keccak256 hash of the role. e.g. keccak256("TRANSFER_ROLE")

### _setupContractURI

```solidity
function _setupContractURI(string _uri) internal
```

_Lets a contract admin set the URI for contract-level metadata._

inherits IContractMetadata:
### contractURI

```solidity
function contractURI() external view returns (string)
```

_Returns the metadata URI of the contract._

 --- 
### Events:
inherits ERC20Base:
inherits ERC20Permit:
inherits IERC20Permit:
inherits ERC20:
inherits IERC20Metadata:
inherits IERC20:
### Transfer

```solidity
event Transfer(address from, address to, uint256 value)
```

### Approval

```solidity
event Approval(address owner, address spender, uint256 value)
```

inherits Ownable:
inherits IOwnable:
### OwnerUpdated

```solidity
event OwnerUpdated(address prevOwner, address newOwner)
```

_Emitted when a new Owner is set._

inherits Multicall:
inherits IMulticall:
inherits ContractMetadata:
inherits IContractMetadata:
### ContractURIUpdated

```solidity
event ContractURIUpdated(string prevURI, string newURI)
```

_Emitted when the contract URI is updated._

## ConvertLib

### Contract
ConvertLib : contracts/ConvertLib.sol

 --- 
### Functions:
### convert

```solidity
function convert(uint256 amount, uint256 conversionRate) public pure returns (uint256 convertedAmount)
```

