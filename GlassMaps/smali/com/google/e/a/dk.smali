.class public final Lcom/google/e/a/dk;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# static fields
.field private static volatile c:[Lcom/google/e/a/dk;


# instance fields
.field public a:Lcom/google/e/a/dn;

.field public b:Lcom/google/e/a/do;

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 788
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 789
    invoke-direct {p0}, Lcom/google/e/a/dk;->c()Lcom/google/e/a/dk;

    .line 790
    return-void
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dk;
    .locals 1

    .prologue
    .line 839
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 840
    sparse-switch v0, :sswitch_data_0

    .line 844
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 845
    :sswitch_0
    return-object p0

    .line 850
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/dk;->e:Ljava/lang/String;

    .line 851
    iget v0, p0, Lcom/google/e/a/dk;->d:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/dk;->d:I

    goto :goto_0

    .line 855
    :sswitch_2
    iget-object v0, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    if-nez v0, :cond_1

    .line 856
    new-instance v0, Lcom/google/e/a/dn;

    invoke-direct {v0}, Lcom/google/e/a/dn;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 862
    :sswitch_3
    iget-object v0, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    if-nez v0, :cond_2

    .line 863
    new-instance v0, Lcom/google/e/a/do;

    invoke-direct {v0}, Lcom/google/e/a/do;-><init>()V

    iput-object v0, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 840
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public static a()[Lcom/google/e/a/dk;
    .locals 2

    .prologue
    .line 747
    sget-object v0, Lcom/google/e/a/dk;->c:[Lcom/google/e/a/dk;

    if-nez v0, :cond_1

    .line 748
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 750
    :try_start_0
    sget-object v0, Lcom/google/e/a/dk;->c:[Lcom/google/e/a/dk;

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/e/a/dk;

    sput-object v0, Lcom/google/e/a/dk;->c:[Lcom/google/e/a/dk;

    .line 753
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :cond_1
    sget-object v0, Lcom/google/e/a/dk;->c:[Lcom/google/e/a/dk;

    return-object v0

    .line 753
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private c()Lcom/google/e/a/dk;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 793
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/e/a/dk;->d:I

    .line 794
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/dk;->e:Ljava/lang/String;

    .line 795
    iput-object v1, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    .line 796
    iput-object v1, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    .line 797
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/dk;->cachedSize:I

    .line 798
    return-object p0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/google/e/a/dk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 817
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 818
    iget v1, p0, Lcom/google/e/a/dk;->d:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 819
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/e/a/dk;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 822
    :cond_0
    iget-object v1, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    if-eqz v1, :cond_1

    .line 823
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    if-eqz v1, :cond_2

    .line 827
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 830
    :cond_2
    iput v0, p0, Lcom/google/e/a/dk;->cachedSize:I

    .line 831
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/google/e/a/dk;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/dk;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 804
    iget v0, p0, Lcom/google/e/a/dk;->d:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 805
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/e/a/dk;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    if-eqz v0, :cond_1

    .line 808
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/e/a/dk;->a:Lcom/google/e/a/dn;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    if-eqz v0, :cond_2

    .line 811
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/e/a/dk;->b:Lcom/google/e/a/do;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 813
    :cond_2
    return-void
.end method
