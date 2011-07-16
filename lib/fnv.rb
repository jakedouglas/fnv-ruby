class FNV
  INIT32  = 0x811c9dc5
  INIT64  = 0xcbf29ce484222325
  PRIME32 = 0x01000193
  PRIME64 = 0x100000001b3
  MASK32  = 0xffffffff
  MASK64  = 0xffffffffffffffff

  def fnv1_32(data)
    hash = INIT32

    data.bytes.each do |byte|
      hash = hash * PRIME32
      hash = hash ^ byte
    end

    hash & MASK32
  end

  def fnv1_64(data)
    hash = INIT64

    data.bytes.each do |byte|
      hash = hash * PRIME64
      hash = hash ^ byte
    end

    hash & MASK64
  end

  def fnv1a_32(data)
    hash = INIT32

    data.bytes.each do |byte|
      hash = hash ^ byte
      hash = hash * PRIME32
    end

    hash & MASK32
  end

  def fnv1a_64(data)
    hash = INIT64

    data.bytes.each do |byte|
      hash = hash ^ byte
      hash = hash * PRIME64
    end

    hash & MASK64
  end
end
