.class public final Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternativeInterpretationAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;


# instance fields
.field private bitField0_:I

.field private displayText_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11733
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11734
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->clear()Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    .line 11735
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 2

    .prologue
    .line 11698
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    if-nez v0, :cond_1

    .line 11699
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11701
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    if-nez v0, :cond_0

    .line 11702
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    .line 11704
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11706
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    return-object v0

    .line 11704
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11795
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11789
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 1

    .prologue
    .line 11738
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    .line 11739
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    .line 11740
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->cachedSize:I

    .line 11741
    return-object p0
.end method

.method public clearDisplayText()Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 1

    .prologue
    .line 11728
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    .line 11729
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    .line 11730
    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11714
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11754
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11755
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11756
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11759
    :cond_0
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->cachedSize:I

    .line 11760
    return v0
.end method

.method public hasDisplayText()Z
    .locals 1

    .prologue
    .line 11725
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

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
    .line 11692
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11768
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11769
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11773
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11774
    :sswitch_0
    return-object p0

    .line 11779
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    .line 11780
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    goto :goto_0

    .line 11769
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11717
    if-nez p1, :cond_0

    .line 11718
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11720
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    .line 11721
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    .line 11722
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
    .line 11747
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11748
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$AlternativeInterpretationAction;->displayText_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11750
    :cond_0
    return-void
.end method
