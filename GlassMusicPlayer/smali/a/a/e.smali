.class public final La/a/e;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field public static final a:[La/a/e;


# instance fields
.field private b:La/a/d;

.field private c:La/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x0

    new-array v0, v0, [La/a/e;

    sput-object v0, La/a/e;->a:[La/a/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/e;
    .locals 1

    .prologue
    .line 508
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 509
    sparse-switch v0, :sswitch_data_0

    .line 513
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 514
    :sswitch_0
    return-object p0

    .line 519
    :sswitch_1
    iget-object v0, p0, La/a/e;->b:La/a/d;

    if-nez v0, :cond_1

    .line 520
    new-instance v0, La/a/d;

    invoke-direct {v0}, La/a/d;-><init>()V

    iput-object v0, p0, La/a/e;->b:La/a/d;

    .line 522
    :cond_1
    iget-object v0, p0, La/a/e;->b:La/a/d;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 526
    :sswitch_2
    iget-object v0, p0, La/a/e;->c:La/a/d;

    if-nez v0, :cond_2

    .line 527
    new-instance v0, La/a/d;

    invoke-direct {v0}, La/a/d;-><init>()V

    iput-object v0, p0, La/a/e;->c:La/a/d;

    .line 529
    :cond_2
    iget-object v0, p0, La/a/e;->c:La/a/d;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 509
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 464
    if-ne p1, p0, :cond_1

    .line 467
    :cond_0
    :goto_0
    return v0

    .line 465
    :cond_1
    instance-of v2, p1, La/a/e;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 466
    :cond_2
    check-cast p1, La/a/e;

    .line 467
    iget-object v2, p0, La/a/e;->b:La/a/d;

    if-nez v2, :cond_4

    iget-object v2, p1, La/a/e;->b:La/a/d;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, La/a/e;->c:La/a/d;

    if-nez v2, :cond_5

    iget-object v2, p1, La/a/e;->c:La/a/d;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, La/a/e;->b:La/a/d;

    iget-object v3, p1, La/a/e;->b:La/a/d;

    invoke-virtual {v2, v3}, La/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, La/a/e;->c:La/a/d;

    iget-object v3, p1, La/a/e;->c:La/a/d;

    invoke-virtual {v2, v3}, La/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 490
    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, La/a/e;->b:La/a/d;

    if-eqz v1, :cond_0

    .line 492
    const/4 v1, 0x1

    iget-object v2, p0, La/a/e;->b:La/a/d;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 495
    :cond_0
    iget-object v1, p0, La/a/e;->c:La/a/d;

    if-eqz v1, :cond_1

    .line 496
    const/4 v1, 0x2

    iget-object v2, p0, La/a/e;->c:La/a/d;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 499
    :cond_1
    iput v0, p0, La/a/e;->cachedSize:I

    .line 500
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 472
    .line 473
    iget-object v0, p0, La/a/e;->b:La/a/d;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 474
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, La/a/e;->c:La/a/d;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 475
    return v0

    .line 473
    :cond_0
    iget-object v0, p0, La/a/e;->b:La/a/d;

    invoke-virtual {v0}, La/a/d;->hashCode()I

    move-result v0

    goto :goto_0

    .line 474
    :cond_1
    iget-object v1, p0, La/a/e;->c:La/a/d;

    invoke-virtual {v1}, La/a/d;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0, p1}, La/a/e;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)La/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, La/a/e;->b:La/a/d;

    if-eqz v0, :cond_0

    .line 481
    const/4 v0, 0x1

    iget-object v1, p0, La/a/e;->b:La/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 483
    :cond_0
    iget-object v0, p0, La/a/e;->c:La/a/d;

    if-eqz v0, :cond_1

    .line 484
    const/4 v0, 0x2

    iget-object v1, p0, La/a/e;->c:La/a/d;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 486
    :cond_1
    return-void
.end method
