.class public final Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;


# instance fields
.field private bitField0_:I

.field private orientation_:F

.field private pressure_:F

.field private size_:F

.field private toolMajor_:F

.field private toolMinor_:F

.field private touchMajor_:F

.field private touchMinor_:F

.field private x_:F

.field private y_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1898
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1899
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->clear()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 1900
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 2

    .prologue
    .line 1712
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-nez v0, :cond_1

    .line 1713
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1715
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-nez v0, :cond_0

    .line 1716
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 1718
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1720
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    return-object v0

    .line 1718
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2153
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2147
    new-instance v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1903
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1904
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1905
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1906
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1907
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1908
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1909
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1910
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1911
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1912
    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1913
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 1914
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 1915
    return-object p0
.end method

.method public clearOrientation()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1735
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1736
    return-object p0
.end method

.method public clearPressure()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1754
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1755
    return-object p0
.end method

.method public clearSize()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1773
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1774
    return-object p0
.end method

.method public clearToolMajor()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1792
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1793
    return-object p0
.end method

.method public clearToolMinor()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1811
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1812
    return-object p0
.end method

.method public clearTouchMajor()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1829
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1830
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1831
    return-object p0
.end method

.method public clearTouchMinor()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1849
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1850
    return-object p0
.end method

.method public clearX()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1867
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1868
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1869
    return-object p0
.end method

.method public clearY()Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1887
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1888
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 2041
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 2042
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2043
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 2044
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2046
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2047
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 2048
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2050
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2051
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 2052
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2054
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2055
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 2056
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2058
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2059
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 2060
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2062
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2063
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 2064
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2066
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2067
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 2068
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2070
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 2071
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 2072
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2074
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 2075
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 2076
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2078
    :cond_8
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1920
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 1975
    :cond_0
    :goto_0
    return v1

    .line 1923
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 1926
    check-cast v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    .line 1927
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1928
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1929
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1932
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1933
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1934
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1937
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1938
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1939
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1942
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1943
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1944
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1947
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1948
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1949
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1952
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1953
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1954
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1957
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1958
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1959
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1962
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1963
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1964
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1967
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v3, v3, 0x100

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v4, v4, 0x100

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1968
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1969
    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1972
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1973
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 1975
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 1728
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 1747
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 1766
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    return v0
.end method

.method public getToolMajor()F
    .locals 1

    .prologue
    .line 1785
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return v0
.end method

.method public getToolMinor()F
    .locals 1

    .prologue
    .line 1804
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .prologue
    .line 1823
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .prologue
    .line 1842
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1861
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    return v0
.end method

.method public hasOrientation()Z
    .locals 1

    .prologue
    .line 1731
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPressure()Z
    .locals 1

    .prologue
    .line 1750
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 1769
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMajor()Z
    .locals 1

    .prologue
    .line 1788
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasToolMinor()Z
    .locals 1

    .prologue
    .line 1807
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMajor()Z
    .locals 1

    .prologue
    .line 1826
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTouchMinor()Z
    .locals 1

    .prologue
    .line 1845
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 1864
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 1883
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1980
    const/16 v0, 0x11

    .line 1981
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 1982
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1983
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1984
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1985
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1986
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1987
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1988
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1989
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1990
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1991
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1992
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1993
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1994
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1995
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1996
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1997
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 1998
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1999
    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2000
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 2001
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 2002
    :goto_0
    add-int v0, v2, v1

    .line 2003
    return v0

    .line 2002
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2086
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2087
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2091
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2092
    :sswitch_0
    return-object p0

    .line 2097
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 2098
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2102
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 2103
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2107
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 2108
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2112
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 2113
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2117
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 2118
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2122
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 2123
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2127
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 2128
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2132
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 2133
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2137
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 2138
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 2087
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1d -> :sswitch_3
        0x25 -> :sswitch_4
        0x2d -> :sswitch_5
        0x35 -> :sswitch_6
        0x3d -> :sswitch_7
        0x45 -> :sswitch_8
        0x4d -> :sswitch_9
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1706
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public setOrientation(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1739
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1740
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1741
    return-object p0
.end method

.method public setPressure(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1758
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1759
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1760
    return-object p0
.end method

.method public setSize(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1777
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1778
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1779
    return-object p0
.end method

.method public setToolMajor(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1796
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1797
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1798
    return-object p0
.end method

.method public setToolMinor(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1815
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1816
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1817
    return-object p0
.end method

.method public setTouchMajor(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1834
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1835
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1836
    return-object p0
.end method

.method public setTouchMinor(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1853
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1854
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1855
    return-object p0
.end method

.method public setX(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1872
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1873
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1874
    return-object p0
.end method

.method public setY(F)Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1891
    iput p1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1892
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1893
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2009
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2010
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2012
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2013
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2015
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2016
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2018
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2019
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2021
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2022
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2024
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2025
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2027
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2028
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2030
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2031
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2033
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 2034
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/nano/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2036
    :cond_8
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2037
    return-void
.end method
