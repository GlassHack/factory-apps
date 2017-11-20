.class final Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;
.super Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/UnsafeUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Android64MemoryAccessor"
.end annotation


# direct methods
.method constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0
    .param p1, "unsafe"    # Lsun/misc/Unsafe;

    .prologue
    .line 548
    invoke-direct {p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    .line 549
    return-void
.end method


# virtual methods
.method public copyMemory(JJJ)V
    .locals 3
    .param p1, "srcAddress"    # J
    .param p3, "targetAddress"    # J
    .param p5, "length"    # J

    .prologue
    const/4 v2, 0x0

    .line 645
    long-to-int v1, p5

    .line 646
    .local v1, "byteCount":I
    new-array v0, v1, [B

    .line 647
    .local v0, "buffer":[B
    invoke-static {p1, p2, v0, v2, v1}, Llibcore/io/Memory;->peekByteArray(J[BII)V

    .line 648
    invoke-static {p3, p4, v0, v2, v1}, Llibcore/io/Memory;->pokeByteArray(J[BII)V

    .line 649
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
    .line 640
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/Object;J)Z
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 601
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$500(Ljava/lang/Object;J)Z

    move-result v0

    .line 604
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
    .line 553
    invoke-static {p1, p2}, Llibcore/io/Memory;->peekByte(J)B

    move-result v0

    return v0
.end method

.method public getByte(Ljava/lang/Object;J)B
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J

    .prologue
    .line 583
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->access$100(Ljava/lang/Object;J)B

    move-result v0

    .line 586
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
    .line 629
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;->getLong(Ljava/lang/Object;J)J

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
    .line 619
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(J)I
    .locals 1
    .param p1, "address"    # J

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekInt(JZ)I

    move-result v0

    return v0
.end method

.method public getLong(J)J
    .locals 3
    .param p1, "address"    # J

    .prologue
    .line 573
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Llibcore/io/Memory;->peekLong(JZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x0

    .line 654
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 656
    :goto_0
    return-object v1

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/Object;JZ)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # Z

    .prologue
    .line 610
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$700(Ljava/lang/Object;JZ)V

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$800(Ljava/lang/Object;JZ)V

    goto :goto_0
.end method

.method public putByte(JB)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # B

    .prologue
    .line 558
    invoke-static {p1, p2, p3}, Llibcore/io/Memory;->pokeByte(JB)V

    .line 559
    return-void
.end method

.method public putByte(Ljava/lang/Object;JB)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # B

    .prologue
    .line 592
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    invoke-static {p1, p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->access$300(Ljava/lang/Object;JB)V

    .line 597
    :goto_0
    return-void

    .line 595
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
    .line 634
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 635
    return-void
.end method

.method public putFloat(Ljava/lang/Object;JF)V
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "value"    # F

    .prologue
    .line 624
    invoke-static {p4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 625
    return-void
.end method

.method public putInt(JI)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Llibcore/io/Memory;->pokeInt(JIZ)V

    .line 569
    return-void
.end method

.method public putLong(JJ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "value"    # J

    .prologue
    .line 578
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, p4, v0}, Llibcore/io/Memory;->pokeLong(JJZ)V

    .line 579
    return-void
.end method
