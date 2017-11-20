.class public final Lcom/google/majel/proto/AgendaProtos$GmailReference;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "AgendaProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AgendaProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GmailReference"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/AgendaProtos$GmailReference;


# instance fields
.field private bitField0_:I

.field private emailUrl_:Ljava/lang/String;

.field private senderDisplayName_:Ljava/lang/String;

.field private senderEmailAddress_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 94
    invoke-virtual {p0}, Lcom/google/majel/proto/AgendaProtos$GmailReference;->clear()Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 95
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/AgendaProtos$GmailReference;

    sput-object v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->_emptyArray:[Lcom/google/majel/proto/AgendaProtos$GmailReference;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v0}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AgendaProtos$GmailReference;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$GmailReference;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    invoke-direct {v0}, Lcom/google/majel/proto/AgendaProtos$GmailReference;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AgendaProtos$GmailReference;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    .line 101
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->cachedSize:I

    .line 103
    return-object p0
.end method

.method public clearEmailUrl()Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearSenderDisplayName()Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1

    .prologue
    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    .line 89
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public clearSenderEmailAddress()Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getEmailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 122
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 123
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 124
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 128
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 131
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 132
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->cachedSize:I

    .line 136
    return v0
.end method

.method public hasEmailUrl()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSenderDisplayName()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSenderEmailAddress()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AgendaProtos$GmailReference;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$GmailReference;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 145
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 149
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    :sswitch_0
    return-object p0

    .line 155
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    .line 156
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    goto :goto_0

    .line 160
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    .line 161
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    goto :goto_0

    .line 165
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    .line 166
    iget v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    goto :goto_0

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setEmailUrl(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$GmailReference;
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
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setSenderDisplayName(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$GmailReference;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setSenderEmailAddress(Ljava/lang/String;)Lcom/google/majel/proto/AgendaProtos$GmailReference;
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
    iput-object p1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    .line 38
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
    .line 109
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderEmailAddress_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 112
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->emailUrl_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 116
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/AgendaProtos$GmailReference;->senderDisplayName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_2
    return-void
.end method
