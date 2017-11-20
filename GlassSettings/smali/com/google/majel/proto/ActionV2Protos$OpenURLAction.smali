.class public final Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenURLAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;


# instance fields
.field private bitField0_:I

.field private displayUrl_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7732
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7733
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->clear()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 7734
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 2

    .prologue
    .line 7653
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    if-nez v0, :cond_1

    .line 7654
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7656
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    if-nez v0, :cond_0

    .line 7657
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    .line 7659
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7661
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    return-object v0

    .line 7659
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7820
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7814
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 7737
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7738
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 7739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 7740
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 7741
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    .line 7742
    return-object p0
.end method

.method public clearDisplayUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 7705
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 7706
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7707
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 7727
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 7728
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7729
    return-object p0
.end method

.method public clearUrl()Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1

    .prologue
    .line 7683
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 7684
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7685
    return-object p0
.end method

.method public getDisplayUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7691
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7713
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7761
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7762
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7763
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7766
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7767
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7770
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 7771
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7774
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->cachedSize:I

    .line 7775
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7669
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDisplayUrl()Z
    .locals 1

    .prologue
    .line 7702
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 7724
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 7680
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7647
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7783
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7784
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7788
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7789
    :sswitch_0
    return-object p0

    .line 7794
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 7795
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    goto :goto_0

    .line 7799
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 7800
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    goto :goto_0

    .line 7804
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 7805
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    goto :goto_0

    .line 7784
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setDisplayUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7694
    if-nez p1, :cond_0

    .line 7695
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7697
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    .line 7698
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7699
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7716
    if-nez p1, :cond_0

    .line 7717
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7719
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    .line 7720
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7721
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7672
    if-nez p1, :cond_0

    .line 7673
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7675
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    .line 7676
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    .line 7677
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7748
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7749
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7751
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7752
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->displayUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7754
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7755
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$OpenURLAction;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7757
    :cond_2
    return-void
.end method
