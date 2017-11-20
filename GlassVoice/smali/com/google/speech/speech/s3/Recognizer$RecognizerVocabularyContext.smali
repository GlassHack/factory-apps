.class public final Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognizerVocabularyContext"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;


# instance fields
.field public topContact:[Lcom/google/speech/util/Contacts$TopContact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1023
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1024
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    .line 1025
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 2

    .prologue
    .line 1009
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    if-nez v0, :cond_1

    .line 1010
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    if-nez v0, :cond_0

    .line 1013
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    sput-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    .line 1015
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1017
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    return-object v0

    .line 1015
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1109
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1103
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 1

    .prologue
    .line 1028
    invoke-static {}, Lcom/google/speech/util/Contacts$TopContact;->emptyArray()[Lcom/google/speech/util/Contacts$TopContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    .line 1029
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->cachedSize:I

    .line 1030
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 1048
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 1049
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 1050
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1051
    iget-object v3, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    aget-object v0, v3, v1

    .line 1052
    .local v0, "element":Lcom/google/speech/util/Contacts$TopContact;
    if-eqz v0, :cond_0

    .line 1053
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 1050
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "element":Lcom/google/speech/util/Contacts$TopContact;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->cachedSize:I

    .line 1059
    return v2
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
    .line 1003
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1067
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1068
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1072
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1073
    :sswitch_0
    return-object p0

    .line 1078
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1080
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    if-nez v5, :cond_2

    move v1, v4

    .line 1081
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/speech/util/Contacts$TopContact;

    .line 1083
    .local v2, "newArray":[Lcom/google/speech/util/Contacts$TopContact;
    if-eqz v1, :cond_1

    .line 1084
    iget-object v5, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1086
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1087
    new-instance v5, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v5}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    aput-object v5, v2, v1

    .line 1088
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1089
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1080
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/speech/util/Contacts$TopContact;
    :cond_2
    iget-object v5, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v1, v5

    goto :goto_1

    .line 1092
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/speech/util/Contacts$TopContact;
    :cond_3
    new-instance v5, Lcom/google/speech/util/Contacts$TopContact;

    invoke-direct {v5}, Lcom/google/speech/util/Contacts$TopContact;-><init>()V

    aput-object v5, v2, v1

    .line 1093
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1094
    iput-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    goto :goto_0

    .line 1068
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 1037
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1038
    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$RecognizerVocabularyContext;->topContact:[Lcom/google/speech/util/Contacts$TopContact;

    aget-object v0, v2, v1

    .line 1039
    .local v0, "element":Lcom/google/speech/util/Contacts$TopContact;
    if-eqz v0, :cond_0

    .line 1040
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 1037
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1044
    .end local v0    # "element":Lcom/google/speech/util/Contacts$TopContact;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
