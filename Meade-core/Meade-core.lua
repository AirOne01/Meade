-- Meade-core.lua

function SendResetBlock(Client, World, X, Y, Z)
  local BlockType = World:GetBlock(Vector3i(X, Y, Z))
  local BlockMeta = World:GetBlockMeta(Vector3i(X, Y, Z))

  if (BlockType == 0) then
    -- block not loaded or in invalid chunk
    return false
  end

  Client:SendBlockChange(X, Y, Z, BlockType, BlockMeta)
end