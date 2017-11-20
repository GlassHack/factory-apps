.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarId"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;


# instance fields
.field private bitField0_:I

.field private grammarId_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 775
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    .line 776
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 2

    .prologue
    .line 739
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    if-nez v0, :cond_1

    .line 740
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 742
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    if-nez v0, :cond_0

    .line 743
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    .line 745
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 747
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    return-object v0

    .line 745
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 836
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 830
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 1

    .prologue
    .line 779
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    .line 780
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    .line 781
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->cachedSize:I

    .line 782
    return-object p0
.end method

.method public clearGrammarId()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 1

    .prologue
    .line 769
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    .line 770
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    .line 771
    return-object p0
.end method

.method public getGrammarId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 795
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 796
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 797
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 800
    :cond_0
    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->cachedSize:I

    .line 801
    return v0
.end method

.method public hasGrammarId()Z
    .locals 1

    .prologue
    .line 766
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

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
    .line 733
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 809
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 810
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 814
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 815
    :sswitch_0
    return-object p0

    .line 820
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    .line 821
    iget v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    goto :goto_0

    .line 810
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public setGrammarId(Ljava/lang/String;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 758
    if-nez p1, :cond_0

    .line 759
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 761
    :cond_0
    iput-object p1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    .line 762
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    .line 763
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
    .line 788
    iget v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 789
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarId;->grammarId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 791
    :cond_0
    return-void
.end method
