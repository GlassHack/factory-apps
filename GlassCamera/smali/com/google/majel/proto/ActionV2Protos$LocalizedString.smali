.class public final Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedString"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;


# instance fields
.field private bitField0_:I

.field private locale_:Ljava/lang/String;

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9846
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9847
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 9848
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 2

    .prologue
    .line 9789
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-nez v0, :cond_1

    .line 9790
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9792
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-nez v0, :cond_0

    .line 9793
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 9795
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9797
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    return-object v0

    .line 9795
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9921
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9915
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 9851
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    .line 9852
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 9853
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 9854
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    .line 9855
    return-object p0
.end method

.method public clearLocale()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 9819
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 9820
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    .line 9821
    return-object p0
.end method

.method public clearText()Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1

    .prologue
    .line 9841
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 9842
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    .line 9843
    return-object p0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9805
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9871
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 9872
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9873
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9876
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9877
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9880
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->cachedSize:I

    .line 9881
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9827
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 9816
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 9838
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 9783
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9889
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9890
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9894
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9895
    :sswitch_0
    return-object p0

    .line 9900
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 9901
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    goto :goto_0

    .line 9905
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 9906
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    goto :goto_0

    .line 9890
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9808
    if-nez p1, :cond_0

    .line 9809
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9811
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    .line 9812
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    .line 9813
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9830
    if-nez p1, :cond_0

    .line 9831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9833
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    .line 9834
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    .line 9835
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
    .line 9861
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9862
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9864
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9865
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 9867
    :cond_1
    return-void
.end method
