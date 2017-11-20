.class public final Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelfNoteAction"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;


# instance fields
.field private bitField0_:I

.field public bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private body_:Ljava/lang/String;

.field public dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

.field private dEPRECATEDSubject_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7893
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 7894
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->clear()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 7895
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 2

    .prologue
    .line 7830
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    if-nez v0, :cond_1

    .line 7831
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 7833
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    if-nez v0, :cond_0

    .line 7834
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    .line 7836
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7838
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    return-object v0

    .line 7836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7998
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7992
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7898
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    .line 7899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 7900
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 7902
    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7903
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    .line 7904
    return-object p0
.end method

.method public clearBody()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 7885
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 7886
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    .line 7887
    return-object p0
.end method

.method public clearDEPRECATEDSubject()Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1

    .prologue
    .line 7860
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 7861
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    .line 7862
    return-object p0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7871
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    return-object v0
.end method

.method public getDEPRECATEDSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 7846
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7926
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 7927
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7928
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7931
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7932
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7935
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v1, :cond_2

    .line 7936
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7939
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v1, :cond_3

    .line 7940
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7943
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->cachedSize:I

    .line 7944
    return v0
.end method

.method public hasBody()Z
    .locals 1

    .prologue
    .line 7882
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDEPRECATEDSubject()Z
    .locals 1

    .prologue
    .line 7857
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

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
    .line 7824
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7952
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7953
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7957
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7958
    :sswitch_0
    return-object p0

    .line 7963
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 7964
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    goto :goto_0

    .line 7968
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 7969
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    goto :goto_0

    .line 7973
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v1, :cond_1

    .line 7974
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7976
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7980
    :sswitch_4
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v1, :cond_2

    .line 7981
    new-instance v1, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    .line 7983
    :cond_2
    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 7953
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public setBody(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7874
    if-nez p1, :cond_0

    .line 7875
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7877
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    .line 7878
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    .line 7879
    return-object p0
.end method

.method public setDEPRECATEDSubject(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 7849
    if-nez p1, :cond_0

    .line 7850
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 7852
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    .line 7853
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    .line 7854
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
    .line 7910
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7911
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubject_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7913
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7914
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->body_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 7916
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v0, :cond_2

    .line 7917
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->dEPRECATEDSubjectSpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7919
    :cond_2
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    if-eqz v0, :cond_3

    .line 7920
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$SelfNoteAction;->bodySpan:Lcom/google/majel/proto/SpanProtos$Span;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 7922
    :cond_3
    return-void
.end method
