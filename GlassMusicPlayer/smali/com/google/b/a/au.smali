.class public final Lcom/google/b/a/au;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field public a:[Lcom/google/b/a/ar;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3484
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3485
    invoke-direct {p0}, Lcom/google/b/a/au;->a()Lcom/google/b/a/au;

    .line 3486
    return-void
.end method

.method private a()Lcom/google/b/a/au;
    .locals 1

    .prologue
    .line 3489
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/b/a/au;->b:I

    .line 3490
    invoke-static {}, Lcom/google/b/a/ar;->a()[Lcom/google/b/a/ar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    .line 3491
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/au;->c:Ljava/lang/String;

    .line 3492
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/au;->cachedSize:I

    .line 3493
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/au;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3537
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3538
    sparse-switch v0, :sswitch_data_0

    .line 3542
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3543
    :sswitch_0
    return-object p0

    .line 3548
    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v2

    .line 3550
    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    if-nez v0, :cond_2

    move v0, v1

    .line 3551
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/b/a/ar;

    .line 3553
    if-eqz v0, :cond_1

    .line 3554
    iget-object v3, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3556
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 3557
    new-instance v3, Lcom/google/b/a/ar;

    invoke-direct {v3}, Lcom/google/b/a/ar;-><init>()V

    aput-object v3, v2, v0

    .line 3558
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3559
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3556
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3550
    :cond_2
    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    array-length v0, v0

    goto :goto_1

    .line 3562
    :cond_3
    new-instance v3, Lcom/google/b/a/ar;

    invoke-direct {v3}, Lcom/google/b/a/ar;-><init>()V

    aput-object v3, v2, v0

    .line 3563
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3564
    iput-object v2, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    goto :goto_0

    .line 3568
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/au;->c:Ljava/lang/String;

    .line 3569
    iget v0, p0, Lcom/google/b/a/au;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/au;->b:I

    goto :goto_0

    .line 3538
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 3514
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v1

    .line 3515
    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3516
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 3517
    iget-object v2, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    aget-object v2, v2, v0

    .line 3518
    if-eqz v2, :cond_0

    .line 3519
    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v2

    add-int/2addr v1, v2

    .line 3516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3524
    :cond_1
    iget v0, p0, Lcom/google/b/a/au;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3525
    const/4 v0, 0x2

    iget-object v2, p0, Lcom/google/b/a/au;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 3528
    :cond_2
    iput v1, p0, Lcom/google/b/a/au;->cachedSize:I

    .line 3529
    return v1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 3440
    invoke-direct {p0, p1}, Lcom/google/b/a/au;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/au;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 3499
    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 3500
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 3501
    iget-object v1, p0, Lcom/google/b/a/au;->a:[Lcom/google/b/a/ar;

    aget-object v1, v1, v0

    .line 3502
    if-eqz v1, :cond_0

    .line 3503
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3500
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3507
    :cond_1
    iget v0, p0, Lcom/google/b/a/au;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 3508
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/au;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3510
    :cond_2
    return-void
.end method
