.class public final Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognizerOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/logs/RecognizerOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alternate"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;


# instance fields
.field private bitField0_:I

.field private confidence_:F

.field private text_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1973
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1974
    invoke-virtual {p0}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->clear()Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    .line 1975
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 2

    .prologue
    .line 1919
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    if-nez v0, :cond_1

    .line 1920
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1922
    :try_start_0
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    if-nez v0, :cond_0

    .line 1923
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    sput-object v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    .line 1925
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1927
    :cond_1
    sget-object v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->_emptyArray:[Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    return-object v0

    .line 1925
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2048
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2042
    new-instance v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    invoke-direct {v0}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1

    .prologue
    .line 1978
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    .line 1979
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    .line 1980
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    .line 1981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->cachedSize:I

    .line 1982
    return-object p0
.end method

.method public clearConfidence()Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1

    .prologue
    .line 1968
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    .line 1969
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    .line 1970
    return-object p0
.end method

.method public clearText()Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1

    .prologue
    .line 1949
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    .line 1950
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    .line 1951
    return-object p0
.end method

.method public getConfidence()F
    .locals 1

    .prologue
    .line 1957
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1998
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1999
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 2000
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2003
    :cond_0
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 2004
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 2007
    :cond_1
    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->cachedSize:I

    .line 2008
    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public hasConfidence()Z
    .locals 1

    .prologue
    .line 1965
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 1946
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

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
    .line 1913
    invoke-virtual {p0, p1}, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2016
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2017
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2021
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2022
    :sswitch_0
    return-object p0

    .line 2027
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    .line 2028
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    goto :goto_0

    .line 2032
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    .line 2033
    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    goto :goto_0

    .line 2017
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public setConfidence(F)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1960
    iput p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    .line 1961
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    .line 1962
    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/google/speech/logs/RecognizerOuterClass$Alternate;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1938
    if-nez p1, :cond_0

    .line 1939
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1941
    :cond_0
    iput-object p1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    .line 1942
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    .line 1943
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
    .line 1988
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1989
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->text_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1991
    :cond_0
    iget v0, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1992
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/logs/RecognizerOuterClass$Alternate;->confidence_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 1994
    :cond_1
    return-void
.end method
