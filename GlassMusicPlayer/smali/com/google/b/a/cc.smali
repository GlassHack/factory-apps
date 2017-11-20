.class public final Lcom/google/b/a/cc;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/cc;


# instance fields
.field public a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15542
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 15543
    invoke-direct {p0}, Lcom/google/b/a/cc;->b()Lcom/google/b/a/cc;

    .line 15544
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cc;
    .locals 1

    .prologue
    .line 15601
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 15602
    sparse-switch v0, :sswitch_data_0

    .line 15606
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 15607
    :sswitch_0
    return-object p0

    .line 15612
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-nez v0, :cond_1

    .line 15613
    new-instance v0, Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-direct {v0}, Lcom/google/wireless/android/nova/Common$DeviceDescription;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 15615
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 15619
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cc;->d:Ljava/lang/String;

    .line 15620
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/cc;->c:I

    goto :goto_0

    .line 15624
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/a/cc;->e:Ljava/lang/String;

    .line 15625
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/cc;->c:I

    goto :goto_0

    .line 15629
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/b/a/cc;->f:Z

    .line 15630
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/cc;->c:I

    goto :goto_0

    .line 15602
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/cc;
    .locals 2

    .prologue
    .line 15463
    sget-object v0, Lcom/google/b/a/cc;->b:[Lcom/google/b/a/cc;

    if-nez v0, :cond_1

    .line 15464
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15466
    :try_start_0
    sget-object v0, Lcom/google/b/a/cc;->b:[Lcom/google/b/a/cc;

    if-nez v0, :cond_0

    .line 15467
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/cc;

    sput-object v0, Lcom/google/b/a/cc;->b:[Lcom/google/b/a/cc;

    .line 15469
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15471
    :cond_1
    sget-object v0, Lcom/google/b/a/cc;->b:[Lcom/google/b/a/cc;

    return-object v0

    .line 15469
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/cc;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15547
    iput v1, p0, Lcom/google/b/a/cc;->c:I

    .line 15548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    .line 15549
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cc;->d:Ljava/lang/String;

    .line 15550
    const-string v0, ""

    iput-object v0, p0, Lcom/google/b/a/cc;->e:Ljava/lang/String;

    .line 15551
    iput-boolean v1, p0, Lcom/google/b/a/cc;->f:Z

    .line 15552
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/cc;->cachedSize:I

    .line 15553
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 15575
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 15576
    iget-object v1, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-eqz v1, :cond_0

    .line 15577
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15580
    :cond_0
    iget v1, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 15581
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/b/a/cc;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15584
    :cond_1
    iget v1, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 15585
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/b/a/cc;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 15588
    :cond_2
    iget v1, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 15589
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/b/a/cc;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 15592
    :cond_3
    iput v0, p0, Lcom/google/b/a/cc;->cachedSize:I

    .line 15593
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 15457
    invoke-direct {p0, p1}, Lcom/google/b/a/cc;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/cc;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 15559
    iget-object v0, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    if-eqz v0, :cond_0

    .line 15560
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/cc;->a:Lcom/google/wireless/android/nova/Common$DeviceDescription;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 15562
    :cond_0
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 15563
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/b/a/cc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15565
    :cond_1
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 15566
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/b/a/cc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 15568
    :cond_2
    iget v0, p0, Lcom/google/b/a/cc;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 15569
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/b/a/cc;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 15571
    :cond_3
    return-void
.end method
