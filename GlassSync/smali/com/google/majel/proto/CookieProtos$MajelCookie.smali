.class public final Lcom/google/majel/proto/CookieProtos$MajelCookie;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "CookieProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/CookieProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MajelCookie"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/CookieProtos$MajelCookie;


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 72
    invoke-virtual {p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->clear()Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 73
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->_emptyArray:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->_emptyArray:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/CookieProtos$MajelCookie;

    sput-object v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->_emptyArray:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->_emptyArray:[Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 140
    new-instance v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    invoke-direct {v0}, Lcom/google/majel/proto/CookieProtos$MajelCookie;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/CookieProtos$MajelCookie;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    .line 80
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 96
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 97
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 98
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 102
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->cachedSize:I

    .line 106
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/CookieProtos$MajelCookie;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CookieProtos$MajelCookie;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 115
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 119
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    :sswitch_0
    return-object p0

    .line 125
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 126
    iget v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 131
    iget v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    goto :goto_0

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/CookieProtos$MajelCookie;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    .line 60
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
    .line 86
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 87
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 90
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/CookieProtos$MajelCookie;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 92
    :cond_1
    return-void
.end method
