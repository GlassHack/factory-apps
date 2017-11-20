.class public final Lcom/google/speech/s3/S3$Locale;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "S3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/s3/S3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Locale"
.end annotation


# static fields
.field public static final LOCALE_FORMAT_BCP_47:I = 0x1

.field public static final LOCALE_FORMAT_JAVA:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/speech/s3/S3$Locale;


# instance fields
.field private bitField0_:I

.field private format_:I

.field private locale_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 988
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 989
    invoke-virtual {p0}, Lcom/google/speech/s3/S3$Locale;->clear()Lcom/google/speech/s3/S3$Locale;

    .line 990
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/s3/S3$Locale;
    .locals 2

    .prologue
    .line 934
    sget-object v0, Lcom/google/speech/s3/S3$Locale;->_emptyArray:[Lcom/google/speech/s3/S3$Locale;

    if-nez v0, :cond_1

    .line 935
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 937
    :try_start_0
    sget-object v0, Lcom/google/speech/s3/S3$Locale;->_emptyArray:[Lcom/google/speech/s3/S3$Locale;

    if-nez v0, :cond_0

    .line 938
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/s3/S3$Locale;

    sput-object v0, Lcom/google/speech/s3/S3$Locale;->_emptyArray:[Lcom/google/speech/s3/S3$Locale;

    .line 940
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    :cond_1
    sget-object v0, Lcom/google/speech/s3/S3$Locale;->_emptyArray:[Lcom/google/speech/s3/S3$Locale;

    return-object v0

    .line 940
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v0, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/s3/S3$Locale;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1057
    new-instance v0, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v0}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/s3/S3$Locale;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/s3/S3$Locale;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 993
    iput v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    .line 994
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 995
    iput v1, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 996
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    .line 997
    return-object p0
.end method

.method public clearFormat()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 983
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 984
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    .line 985
    return-object p0
.end method

.method public clearLocale()Lcom/google/speech/s3/S3$Locale;
    .locals 1

    .prologue
    .line 964
    const-string v0, ""

    iput-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 965
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    .line 966
    return-object p0
.end method

.method public getFormat()I
    .locals 1

    .prologue
    .line 972
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1013
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1014
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1015
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1018
    :cond_0
    iget v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1019
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1022
    :cond_1
    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->cachedSize:I

    .line 1023
    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 980
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 961
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

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
    .line 924
    invoke-virtual {p0, p1}, Lcom/google/speech/s3/S3$Locale;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/s3/S3$Locale;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1032
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1036
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    :sswitch_0
    return-object p0

    .line 1042
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 1043
    iget v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    goto :goto_0

    .line 1047
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 1048
    iget v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    goto :goto_0

    .line 1032
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setFormat(I)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    .line 976
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    .line 977
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 953
    if-nez p1, :cond_0

    .line 954
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 956
    :cond_0
    iput-object p1, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    .line 957
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    .line 958
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
    .line 1003
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1004
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/speech/s3/S3$Locale;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1006
    :cond_0
    iget v0, p0, Lcom/google/speech/s3/S3$Locale;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1007
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/s3/S3$Locale;->format_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1009
    :cond_1
    return-void
.end method
