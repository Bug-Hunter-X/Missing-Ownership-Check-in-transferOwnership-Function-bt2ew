function transferOwnership(newOwner) {
  require(msg.sender == _owner, "Ownable: caller is not the owner"); // Added check
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}
