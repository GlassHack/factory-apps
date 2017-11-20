.class public final Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


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
    .line 1658
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    sput-object v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1659
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 1664
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1683
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1702
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1721
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1740
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1759
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1778
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1797
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1816
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1659
    return-void
.end method


# virtual methods
.method public final clearOrientation()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1677
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1678
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1679
    return-object p0
.end method

.method public final clearPressure()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1696
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1697
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1698
    return-object p0
.end method

.method public final clearSize()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1715
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1716
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1717
    return-object p0
.end method

.method public final clearToolMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1734
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1735
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1736
    return-object p0
.end method

.method public final clearToolMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1754
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1755
    return-object p0
.end method

.method public final clearTouchMajor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1772
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1773
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1774
    return-object p0
.end method

.method public final clearTouchMinor()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1791
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1792
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1793
    return-object p0
.end method

.method public final clearX()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1810
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1811
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1812
    return-object p0
.end method

.method public final clearY()Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1829
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1830
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1831
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1836
    if-ne p1, p0, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return v0

    .line 1837
    :cond_1
    instance-of v2, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 1838
    :cond_2
    check-cast p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    .line 1839
    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    iget v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 1848
    goto :goto_0

    .line 1839
    :cond_4
    iget-object v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    .line 1848
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getOrientation()F
    .locals 1

    .prologue
    .line 1666
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    return v0
.end method

.method public final getPressure()F
    .locals 1

    .prologue
    .line 1685
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1901
    const/4 v0, 0x0

    .line 1902
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1903
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1904
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1906
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1907
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1908
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1910
    :cond_1
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1911
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1912
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1914
    :cond_2
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1915
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1916
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1918
    :cond_3
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1919
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1920
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1922
    :cond_4
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1923
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1924
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1926
    :cond_5
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 1927
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1928
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1930
    :cond_6
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 1931
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1932
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1934
    :cond_7
    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 1935
    const/16 v1, 0x9

    iget v2, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1936
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1938
    :cond_8
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1939
    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->cachedSize:I

    .line 1940
    return v0
.end method

.method public final getSize()F
    .locals 1

    .prologue
    .line 1704
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    return v0
.end method

.method public final getToolMajor()F
    .locals 1

    .prologue
    .line 1723
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    return v0
.end method

.method public final getToolMinor()F
    .locals 1

    .prologue
    .line 1742
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    return v0
.end method

.method public final getTouchMajor()F
    .locals 1

    .prologue
    .line 1761
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    return v0
.end method

.method public final getTouchMinor()F
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    return v0
.end method

.method public final getX()F
    .locals 1

    .prologue
    .line 1799
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .prologue
    .line 1818
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    return v0
.end method

.method public final hasOrientation()Z
    .locals 1

    .prologue
    .line 1674
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

.method public final hasPressure()Z
    .locals 1

    .prologue
    .line 1693
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

.method public final hasSize()Z
    .locals 1

    .prologue
    .line 1712
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

.method public final hasToolMajor()Z
    .locals 1

    .prologue
    .line 1731
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

.method public final hasToolMinor()Z
    .locals 1

    .prologue
    .line 1750
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

.method public final hasTouchMajor()Z
    .locals 1

    .prologue
    .line 1769
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

.method public final hasTouchMinor()Z
    .locals 1

    .prologue
    .line 1788
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

.method public final hasX()Z
    .locals 1

    .prologue
    .line 1807
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

.method public final hasY()Z
    .locals 1

    .prologue
    .line 1826
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

.method public final hashCode()I
    .locals 2

    .prologue
    .line 1852
    .line 1853
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 1854
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1855
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1856
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1857
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1858
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1859
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1860
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1861
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1862
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 1863
    return v0

    .line 1862
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 2

    .prologue
    .line 1948
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1949
    sparse-switch v0, :sswitch_data_0

    .line 1953
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1954
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    .line 1957
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1959
    :sswitch_0
    return-object p0

    .line 1964
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1965
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1969
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1970
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1974
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1975
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1979
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1980
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1984
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1985
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1989
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1990
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1994
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1995
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto :goto_0

    .line 1999
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 2000
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 2004
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 2005
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    goto/16 :goto_0

    .line 1949
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

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1655
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 2020
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom([B)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 2014
    new-instance v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;

    return-object v0
.end method

.method public final setOrientation(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1669
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    .line 1670
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1671
    return-object p0
.end method

.method public final setPressure(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1688
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    .line 1689
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1690
    return-object p0
.end method

.method public final setSize(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1707
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    .line 1708
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1709
    return-object p0
.end method

.method public final setToolMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1726
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    .line 1727
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1728
    return-object p0
.end method

.method public final setToolMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1745
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    .line 1746
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1747
    return-object p0
.end method

.method public final setTouchMajor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1764
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    .line 1765
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1766
    return-object p0
.end method

.method public final setTouchMinor(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1783
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    .line 1784
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1785
    return-object p0
.end method

.method public final setX(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1802
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    .line 1803
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1804
    return-object p0
.end method

.method public final setY(F)Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;
    .locals 1

    .prologue
    .line 1821
    iput p1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    .line 1822
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    .line 1823
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1868
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1869
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->orientation_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1871
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1872
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->pressure_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1874
    :cond_1
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1875
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->size_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1877
    :cond_2
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1878
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1880
    :cond_3
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1881
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->toolMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1883
    :cond_4
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1884
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMajor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1886
    :cond_5
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 1887
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->touchMinor_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1889
    :cond_6
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 1890
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->x_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1892
    :cond_7
    iget v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 1893
    const/16 v0, 0x9

    iget v1, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->y_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1895
    :cond_8
    iget-object v0, p0, Lcom/google/glass/companion/Proto$MotionEvent$PointerCoords;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1897
    return-void
.end method
