.class final Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;
.super Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android32MemoryAccessor"
.end annotation


# static fields
.field private static final SMALL_ADDRESS_MASK:J = -0x1L


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 673
    return-void
.end method

.method private static smallAddress(J)I
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 668
    const-wide/16 v0, -0x1

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public copyMemory(JJJ)V
    .locals 5
    .param p1, "srcAddress"    # J
    .param p3, "targetAddress"    # J
    .param p5, "length"    # J

    .prologue
    const/4 v3, 0x0

    .line 769
    long-to-int v1, p5

    .line 770
    .local v1, "byteCount":I
    new-array v0, v1, [B

    .line 771
    .local v0, "buffer":[B
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v2

    invoke-static {v2, v0, v3, v1}, Llibcore/io/Memory;->peekByteArray(I[BII)V

    .line 772
    invoke-static {p3, p4}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v2

    invoke-static {v2, v0, v3, v1}, Llibcore/io/Memory;->pokeByteArray(I[BII)V

    .line 773
    return-void
.end method

.method public copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "srcOffset"    # J
    .param p4, "target"    # Ljava/lang/Object;
    .param p5, "targetOffset"    # J
    .param p7, "length"    # J

    .prologue
    .line 764
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 725
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;J)Z

    move-result v0

    .line 728
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$600(Ljava/lang/Object;J)Z

    move-result v0

    goto :goto_0
.end method

.method public getByte(J)B
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 677
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    invoke-static {v0}, Llibcore/io/Memory;->peekByte(I)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 707
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$100(Ljava/lang/Object;J)B

    move-result v0

    .line 710
    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$200(Ljava/lang/Object;J)B

    move-result v0

    goto :goto_0
.end method

.method public getDouble(Ljava/lang/Object;J)D
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 753
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(Ljava/lang/Object;J)F
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 743
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(J)I
    .locals 3
    .param p1, "address"    # J

    .prologue
    .line 687
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekInt(IZ)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .locals 3
    .param p1, "address"    # J

    .prologue
    .line 697
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/io/Memory;->peekLong(IZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x0

    .line 778
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 780
    :goto_0
    return-object v1

    .line 779
    :catch_0
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 734
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;JZ)V

    .line 739
    :goto_0
    return-void

    .line 737
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_0
.end method

.method public putByte(JB)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # B

    .prologue
    .line 682
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    invoke-static {v0, p3}, Llibcore/io/Memory;->pokeByte(IB)V

    .line 683
    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # B

    .prologue
    .line 716
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;JB)V

    .line 721
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$400(Ljava/lang/Object;JB)V

    goto :goto_0
.end method

.method public putDouble(Ljava/lang/Object;JD)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # D

    .prologue
    .line 758
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 759
    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # F

    .prologue
    .line 748
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 749
    return-void
.end method

.method public putInt(JI)V
    .locals 3
    .param p1, "address"    # J
    .param p3, "value"    # I

    .prologue
    .line 692
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Llibcore/io/Memory;->pokeInt(IIZ)V

    .line 693
    return-void
.end method

.method public putLong(JJ)V
    .locals 3
    .param p1, "address"    # J
    .param p3, "value"    # J

    .prologue
    .line 702
    invoke-static {p1, p2}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;->smallAddress(J)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p3, p4, v1}, Llibcore/io/Memory;->pokeLong(IJZ)V

    .line 703
    return-void
.end method
