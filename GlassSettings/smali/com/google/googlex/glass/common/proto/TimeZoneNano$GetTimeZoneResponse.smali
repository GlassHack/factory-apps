.class public final Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TimeZoneNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/TimeZoneNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetTimeZoneResponse"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;


# instance fields
.field private bitField0_:I

.field private reverseSuccessful_:Z

.field private timeZone_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 139
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 256
    new-instance v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    return-object v0
.end method


# virtual methods
.method public clearReverseSuccessful()Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 180
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    .line 181
    return-object p0
.end method

.method public clearTimeZone()Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1

    .prologue
    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    .line 161
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    .line 162
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    if-ne p1, p0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v1

    .line 187
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 188
    check-cast v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    .line 189
    .local v0, "other":Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1
.end method

.method public getReverseSuccessful()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    .line 215
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 217
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 218
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 219
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 221
    :cond_1
    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->cachedSize:I

    .line 222
    return v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public hasReverseSuccessful()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 194
    const/16 v0, 0x11

    .line 195
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 196
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v2, v1

    .line 197
    return v0

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 196
    :cond_1
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 231
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 235
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    :sswitch_0
    return-object p0

    .line 241
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    .line 242
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    goto :goto_0

    .line 246
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 247
    iget v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    goto :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;

    move-result-object v0

    return-object v0
.end method

.method public setReverseSuccessful(Z)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    .line 172
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    .line 173
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    .line 153
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    .line 154
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->timeZone_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 205
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/TimeZoneNano$GetTimeZoneResponse;->reverseSuccessful_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 208
    :cond_1
    return-void
.end method
