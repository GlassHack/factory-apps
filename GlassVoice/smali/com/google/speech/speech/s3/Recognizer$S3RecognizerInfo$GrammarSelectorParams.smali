.class public final Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Recognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarSelectorParams"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;


# instance fields
.field private bitField0_:I

.field private selectedApplication_:Ljava/lang/String;

.field private selectedSlot_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 81
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    if-nez v0, :cond_1

    .line 23
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    if-nez v0, :cond_0

    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    sput-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->_emptyArray:[Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    invoke-direct {v0}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    .line 88
    return-object p0
.end method

.method public clearSelectedApplication()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 53
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public clearSelectedSlot()Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1

    .prologue
    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 75
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public getSelectedApplication()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedSlot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 105
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 106
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 109
    :cond_0
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 110
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    :cond_1
    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->cachedSize:I

    .line 114
    return v0
.end method

.method public hasSelectedApplication()Z
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSelectedSlot()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

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
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 123
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 127
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 128
    :sswitch_0
    return-object p0

    .line 133
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 134
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    goto :goto_0

    .line 138
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 139
    iget v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    goto :goto_0

    .line 123
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setSelectedApplication(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public setSelectedSlot(Ljava/lang/String;)Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    .line 68
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
    .line 94
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedApplication_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 97
    :cond_0
    iget v0, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/speech/speech/s3/Recognizer$S3RecognizerInfo$GrammarSelectorParams;->selectedSlot_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 100
    :cond_1
    return-void
.end method
