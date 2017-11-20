.class public final Lcom/google/common/logging/TtsLogNano$Tts;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "TtsLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/TtsLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/logging/TtsLogNano$Tts$SynthesisProvider;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/TtsLogNano$Tts;


# instance fields
.field private bitField0_:I

.field private locale_:Ljava/lang/String;

.field private success_:Z

.field private synthesisProvider_:I

.field private timeSinceRequest_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/TtsLogNano$Tts;

    sput-object v0, Lcom/google/common/logging/TtsLogNano$Tts;->EMPTY_ARRAY:[Lcom/google/common/logging/TtsLogNano$Tts;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 21
    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    .line 40
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 81
    iput-boolean v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-direct {v0}, Lcom/google/common/logging/TtsLogNano$Tts;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/TtsLogNano$Tts;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/TtsLogNano$Tts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 216
    new-instance v0, Lcom/google/common/logging/TtsLogNano$Tts;

    invoke-direct {v0}, Lcom/google/common/logging/TtsLogNano$Tts;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/TtsLogNano$Tts;

    return-object v0
.end method


# virtual methods
.method public clearLocale()Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearSuccess()Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    .line 95
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public clearSynthesisProvider()Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    .line 35
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearTimeSinceRequest()Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 2

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    .line 54
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/TtsLogNano$Tts;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/google/common/logging/TtsLogNano$Tts;

    .line 104
    .local v0, "other":Lcom/google/common/logging/TtsLogNano$Tts;
    iget v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    iget v4, v0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    if-ne v3, v4, :cond_3

    iget-wide v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    iget-wide v5, v0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 106
    :goto_1
    iget-boolean v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 108
    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    .line 144
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_0
    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    .line 148
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_1
    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_2
    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    .line 156
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->cachedSize:I

    .line 160
    return v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    return v0
.end method

.method public getSynthesisProvider()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    return v0
.end method

.method public getTimeSinceRequest()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    return-wide v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSuccess()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSynthesisProvider()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTimeSinceRequest()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    add-int/lit16 v0, v1, 0x20f

    .line 114
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    iget-wide v5, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 115
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 116
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    add-int v0, v3, v1

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 118
    return v0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 116
    :cond_1
    const/4 v1, 0x2

    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 169
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 173
    iget-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    .line 177
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 185
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 188
    :cond_2
    iput v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    .line 189
    iget v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    goto :goto_0

    .line 191
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    goto :goto_0

    .line 196
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    .line 197
    iget v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    goto :goto_0

    .line 201
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 202
    iget v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    goto :goto_0

    .line 206
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    .line 207
    iget v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/logging/TtsLogNano$Tts;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/TtsLogNano$Tts;

    move-result-object v0

    return-object v0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    .line 68
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 69
    return-object p0
.end method

.method public setSuccess(Z)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    .line 87
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setSynthesisProvider(I)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    .line 27
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 28
    return-object p0
.end method

.method public setTimeSinceRequest(J)Lcom/google/common/logging/TtsLogNano$Tts;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    .line 46
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->synthesisProvider_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->timeSinceRequest_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/logging/TtsLogNano$Tts;->success_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/google/common/logging/TtsLogNano$Tts;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 137
    return-void
.end method
