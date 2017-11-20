.class public final Lcom/google/b/a/dy;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile b:[Lcom/google/b/a/dy;


# instance fields
.field public a:Lcom/google/b/a/fg;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 771
    invoke-direct {p0}, Lcom/google/b/a/dy;->b()Lcom/google/b/a/dy;

    .line 772
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dy;
    .locals 1

    .prologue
    .line 829
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 830
    sparse-switch v0, :sswitch_data_0

    .line 834
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 835
    :sswitch_0
    return-object p0

    .line 840
    :sswitch_1
    iget-object v0, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    if-nez v0, :cond_1

    .line 841
    new-instance v0, Lcom/google/b/a/fg;

    invoke-direct {v0}, Lcom/google/b/a/fg;-><init>()V

    iput-object v0, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    .line 843
    :cond_1
    iget-object v0, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 847
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dy;->d:I

    .line 848
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/a/dy;->c:I

    goto :goto_0

    .line 852
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dy;->e:I

    .line 853
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/b/a/dy;->c:I

    goto :goto_0

    .line 857
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/b/a/dy;->f:I

    .line 858
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/a/dy;->c:I

    goto :goto_0

    .line 830
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static a()[Lcom/google/b/a/dy;
    .locals 2

    .prologue
    .line 697
    sget-object v0, Lcom/google/b/a/dy;->b:[Lcom/google/b/a/dy;

    if-nez v0, :cond_1

    .line 698
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    sget-object v0, Lcom/google/b/a/dy;->b:[Lcom/google/b/a/dy;

    if-nez v0, :cond_0

    .line 701
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/b/a/dy;

    sput-object v0, Lcom/google/b/a/dy;->b:[Lcom/google/b/a/dy;

    .line 703
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    :cond_1
    sget-object v0, Lcom/google/b/a/dy;->b:[Lcom/google/b/a/dy;

    return-object v0

    .line 703
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()Lcom/google/b/a/dy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 775
    iput v1, p0, Lcom/google/b/a/dy;->c:I

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    .line 777
    iput v1, p0, Lcom/google/b/a/dy;->d:I

    .line 778
    iput v1, p0, Lcom/google/b/a/dy;->e:I

    .line 779
    iput v1, p0, Lcom/google/b/a/dy;->f:I

    .line 780
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/a/dy;->cachedSize:I

    .line 781
    return-object p0
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 803
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 804
    iget-object v1, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    if-eqz v1, :cond_0

    .line 805
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 808
    :cond_0
    iget v1, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 809
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/b/a/dy;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 812
    :cond_1
    iget v1, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 813
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/b/a/dy;->e:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 816
    :cond_2
    iget v1, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    .line 817
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/b/a/dy;->f:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 820
    :cond_3
    iput v0, p0, Lcom/google/b/a/dy;->cachedSize:I

    .line 821
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/google/b/a/dy;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/b/a/dy;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    if-eqz v0, :cond_0

    .line 788
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/b/a/dy;->a:Lcom/google/b/a/fg;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 790
    :cond_0
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 791
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/b/a/dy;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 793
    :cond_1
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 794
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/b/a/dy;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 796
    :cond_2
    iget v0, p0, Lcom/google/b/a/dy;->c:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 797
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/b/a/dy;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 799
    :cond_3
    return-void
.end method
