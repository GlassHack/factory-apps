.class public final Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesStructuredResponseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation


# static fields
.field public static final ICON_ICON_ART_PROJECT:I = 0x1

.field public static final ICON_ICON_WEB:I

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;


# instance fields
.field private bitField0_:I

.field private icon_:I

.field private label_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 98
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 99
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    if-nez v0, :cond_1

    .line 22
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    .line 27
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 105
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    .line 107
    return-object p0
.end method

.method public clearIcon()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 93
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 94
    return-object p0
.end method

.method public clearLabel()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 52
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 53
    return-object p0
.end method

.method public clearUrl()Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1

    .prologue
    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 74
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 75
    return-object p0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 126
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 127
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 132
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 136
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_2
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->cachedSize:I

    .line 140
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 149
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 153
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    :sswitch_0
    return-object p0

    .line 159
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 160
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    goto :goto_0

    .line 164
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 165
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    goto :goto_0

    .line 169
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 170
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    goto :goto_0

    .line 149
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(I)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    .line 85
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 86
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    .line 44
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 45
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    .line 66
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    .line 67
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
    .line 113
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 116
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 117
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->url_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 119
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesStructuredResponseProtos$GogglesGenericResult$Link;->icon_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 122
    :cond_2
    return-void
.end method
