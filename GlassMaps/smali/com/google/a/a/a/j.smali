.class public final Lcom/google/a/a/a/j;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile a:[Lcom/google/a/a/a/j;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 663
    invoke-direct {p0}, Lcom/google/a/a/a/j;->b()Lcom/google/a/a/a/j;

    .line 664
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/j;
    .locals 1

    .prologue
    .line 697
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 698
    sparse-switch v0, :sswitch_data_0

    .line 702
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    :sswitch_0
    return-object p0

    .line 708
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/String;

    .line 709
    iget v0, p0, Lcom/google/a/a/a/j;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/a/a/j;->b:I

    goto :goto_0

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public static a()[Lcom/google/a/a/a/j;
    .locals 2

    .prologue
    .line 627
    sget-object v0, Lcom/google/a/a/a/j;->a:[Lcom/google/a/a/a/j;

    if-nez v0, :cond_1

    .line 628
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    sget-object v0, Lcom/google/a/a/a/j;->a:[Lcom/google/a/a/a/j;

    if-nez v0, :cond_0

    .line 631
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/a/a/a/j;

    sput-object v0, Lcom/google/a/a/a/j;->a:[Lcom/google/a/a/a/j;

    .line 633
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_1
    sget-object v0, Lcom/google/a/a/a/j;->a:[Lcom/google/a/a/a/j;

    return-object v0

    .line 633
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/a/a/a/j;
    .locals 1

    .prologue
    .line 667
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/a/a/a/j;->b:I

    .line 668
    const-string v0, ""

    iput-object v0, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/String;

    .line 669
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/a/a/j;->cachedSize:I

    .line 670
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 683
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 684
    iget v1, p0, Lcom/google/a/a/a/j;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 685
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 688
    :cond_0
    iput v0, p0, Lcom/google/a/a/a/j;->cachedSize:I

    .line 689
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 621
    invoke-direct {p0, p1}, Lcom/google/a/a/a/j;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/a/a/a/j;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 676
    iget v0, p0, Lcom/google/a/a/a/j;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 677
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/a/a/a/j;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 679
    :cond_0
    return-void
.end method
