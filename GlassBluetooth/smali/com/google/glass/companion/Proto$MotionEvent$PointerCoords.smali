.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto$MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1806
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1807
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1812
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1831
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1850
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1869
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1888
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1907
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1926
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1945
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1964
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1807
    return-void
.end method


# virtual methods
.method public clearOrientation()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1825
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1826
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1827
    return-object p0
.end method

.method public clearPressure()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1845
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1846
    return-object p0
.end method

.method public clearSize()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1863
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1864
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1865
    return-object p0
.end method

.method public clearToolMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1882
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1883
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1884
    return-object p0
.end method

.method public clearToolMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1901
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1902
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1903
    return-object p0
.end method

.method public clearTouchMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1920
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1921
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1922
    return-object p0
.end method

.method public clearTouchMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1939
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1940
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1941
    return-object p0
.end method

.method public clearX()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1958
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1959
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1960
    return-object p0
.end method

.method public clearY()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1977
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1978
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1979
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1984
    if-ne p1, p0, :cond_1

    .line 1996
    :cond_0
    :goto_0
    return v1

    .line 1985
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1986
    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1987
    .local v0, "other":Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    iget v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 1996
    goto :goto_0

    .line 1987
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    .line 1996
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 1814
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    return v0
.end method

.method public getPressure()F
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2049
    const/4 v0, 0x0

    .line 2050
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2051
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 2052
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2054
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2055
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 2056
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2058
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 2059
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 2060
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2062
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 2063
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 2064
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2066
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 2067
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 2068
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2070
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 2071
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 2072
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2074
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 2075
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 2076
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2078
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 2079
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 2080
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2082
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 2083
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 2084
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2086
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2087
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 2088
    return v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 1852
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    return v0
.end method

.method public getToolMajor()F
    .locals 1

    .prologue
    .line 1871
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return v0
.end method

.method public getToolMinor()F
    .locals 1

    .prologue
    .line 1890
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return v0
.end method

.method public getTouchMajor()F
    .locals 1

    .prologue
    .line 1909
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return v0
.end method

.method public getTouchMinor()F
    .locals 1

    .prologue
    .line 1928
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 1947
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 1966
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    return v0
.end method

.method public hasOrientation()Z
    .locals 1

    .prologue
    .line 1822
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1841
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1860
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1879
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1898
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1917
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1936
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1955
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 1974
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

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
    .line 2000
    const/16 v0, 0x11

    .line 2001
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 2002
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2003
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2004
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2005
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2006
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2007
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2008
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2009
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int v0, v1, v2

    .line 2010
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 2011
    return v0

    .line 2010
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2096
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2097
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2101
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 2102
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    .line 2105
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2107
    :sswitch_0
    return-object p0

    .line 2112
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 2113
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2117
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 2118
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2122
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 2123
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2127
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 2128
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2132
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 2133
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2137
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 2138
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2142
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 2143
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 2147
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 2148
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 2152
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 2153
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v1, v1, 0x100

    iput v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 2097
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
    .line 1803
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2168
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2162
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public setOrientation(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1817
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1818
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1819
    return-object p0
.end method

.method public setPressure(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1836
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1837
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1838
    return-object p0
.end method

.method public setSize(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1855
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1856
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1857
    return-object p0
.end method

.method public setToolMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1874
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1875
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1876
    return-object p0
.end method

.method public setToolMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1893
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1894
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1895
    return-object p0
.end method

.method public setTouchMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1912
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1913
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1914
    return-object p0
.end method

.method public setTouchMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1931
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1932
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1933
    return-object p0
.end method

.method public setX(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1950
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1951
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1952
    return-object p0
.end method

.method public setY(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1969
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1970
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1971
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
    .line 2016
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2017
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2019
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 2020
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2022
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 2023
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2025
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 2026
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2028
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 2029
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2031
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 2032
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2034
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 2035
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2037
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 2038
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2040
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 2041
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 2043
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 2045
    return-void
.end method
