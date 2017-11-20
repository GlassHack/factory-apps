.class public final Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerEvent"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;


# instance fields
.field private bitField0_:I

.field public endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

.field private language_:Ljava/lang/String;

.field public recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 908
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 909
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 2

    .prologue
    .line 866
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-nez v0, :cond_1

    .line 867
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 869
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    if-nez v0, :cond_0

    .line 870
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    sput-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    .line 872
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    return-object v0

    .line 872
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 993
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 912
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    .line 913
    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 914
    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 915
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    .line 916
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 917
    return-object p0
.end method

.method public clearLanguage()Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1

    .prologue
    .line 902
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    .line 903
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    .line 904
    return-object p0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 936
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 937
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v1, :cond_0

    .line 938
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 941
    :cond_0
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-eqz v1, :cond_1

    .line 942
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 945
    :cond_1
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 946
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 949
    :cond_2
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->cachedSize:I

    .line 950
    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

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
    .line 860
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 958
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 959
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 963
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 964
    :sswitch_0
    return-object p0

    .line 969
    :sswitch_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-nez v1, :cond_1

    .line 970
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    .line 972
    :cond_1
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 976
    :sswitch_2
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-nez v1, :cond_2

    .line 977
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    .line 979
    :cond_2
    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 983
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    .line 984
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    goto :goto_0

    .line 959
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 891
    if-nez p1, :cond_0

    .line 892
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 894
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    .line 895
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    .line 896
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
    .line 923
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    if-eqz v0, :cond_0

    .line 924
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->recognitionEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    if-eqz v0, :cond_1

    .line 927
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->endpointerEvent:Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 929
    :cond_1
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 930
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerEvent;->language_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 932
    :cond_2
    return-void
.end method
