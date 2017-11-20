.class public final Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;


# instance fields
.field private bitField0_:I

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 121
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
    .locals 1

    .prologue
    .line 216
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
    .locals 1

    .prologue
    .line 210
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    return-object v0
.end method


# virtual methods
.method public final clearSessionId()Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
    .locals 1

    .prologue
    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    .line 138
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    .line 139
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 144
    if-ne p1, p0, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 146
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    .line 147
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 148
    goto :goto_0

    .line 147
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    .line 148
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    iget v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    .line 172
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 175
    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->cachedSize:I

    .line 176
    return v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public final hasSessionId()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 152
    .line 153
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 154
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 155
    return v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
    .locals 2

    .prologue
    .line 184
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 185
    sparse-switch v0, :sswitch_data_0

    .line 189
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    :sswitch_0
    return-object p0

    .line 200
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    .line 201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    goto :goto_0

    .line 185
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setSessionId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;
    .locals 1

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 165
    return-void
.end method
