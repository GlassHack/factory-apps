.class public final Lcom/google/common/a/h;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/h;


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 515
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/h;

    sput-object v0, Lcom/google/common/a/h;->a:[Lcom/google/common/a/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/a/h;->c:I

    .line 516
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/h;
    .locals 2

    .prologue
    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 582
    sparse-switch v0, :sswitch_data_0

    .line 586
    iget-object v1, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 587
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    :sswitch_0
    return-object p0

    .line 597
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/h;->c:I

    .line 598
    iget v0, p0, Lcom/google/common/a/h;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/h;->b:I

    goto :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public final a(I)Lcom/google/common/a/h;
    .locals 1

    .prologue
    .line 526
    iput p1, p0, Lcom/google/common/a/h;->c:I

    .line 527
    iget v0, p0, Lcom/google/common/a/h;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/h;->b:I

    .line 528
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 541
    if-ne p1, p0, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/h;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 543
    :cond_2
    check-cast p1, Lcom/google/common/a/h;

    .line 544
    iget v2, p0, Lcom/google/common/a/h;->c:I

    iget v3, p1, Lcom/google/common/a/h;->c:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 545
    goto :goto_0

    .line 544
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    .line 545
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x0

    .line 567
    iget v1, p0, Lcom/google/common/a/h;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 568
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/a/h;->c:I

    .line 569
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 572
    iput v0, p0, Lcom/google/common/a/h;->cachedSize:I

    .line 573
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 549
    .line 550
    iget v0, p0, Lcom/google/common/a/h;->c:I

    add-int/lit16 v0, v0, 0x20f

    .line 551
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 552
    return v0

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 512
    invoke-direct {p0, p1}, Lcom/google/common/a/h;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/h;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 557
    iget v0, p0, Lcom/google/common/a/h;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 558
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/a/h;->c:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/h;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 562
    return-void
.end method
