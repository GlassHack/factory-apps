.class public final Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ResourceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ResourceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ResourceRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest$ResourceType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;


# instance fields
.field private bitField0_:I

.field private fingerprint_:J

.field private languageCode_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    return-object v0
.end method


# virtual methods
.method public clearFingerprint()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 2

    .prologue
    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    .line 78
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 79
    return-object p0
.end method

.method public clearLanguageCode()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1

    .prologue
    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 101
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1

    .prologue
    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public clearType()Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    .line 37
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 106
    if-ne p1, p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 108
    check-cast v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    .line 109
    .local v0, "other":Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 110
    :goto_1
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 112
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 113
    goto :goto_0

    .line 109
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 110
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    .line 113
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getFingerprint()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    return-wide v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    .line 149
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 151
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 152
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 153
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 155
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 156
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    .line 157
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFixed64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 160
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 161
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 164
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->cachedSize:I

    .line 165
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    return v0
.end method

.method public hasFingerprint()Z
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLanguageCode()Z
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

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
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 117
    const/16 v0, 0x11

    .line 118
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 119
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 120
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 121
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 122
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 123
    return v0

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 122
    :cond_2
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 5
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 174
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 178
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    :sswitch_0
    return-object p0

    .line 189
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 190
    .local v1, "temp":I
    if-eq v1, v4, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 195
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    .line 196
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 198
    :cond_3
    iput v4, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    goto :goto_0

    .line 203
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 204
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 208
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFixed64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    .line 209
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 213
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 214
    iget v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x19 -> :sswitch_3
        0x22 -> :sswitch_4
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;

    move-result-object v0

    return-object v0
.end method

.method public setFingerprint(J)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    .line 70
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public setLanguageCode(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 93
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public setType(I)Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    .line 29
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    .line 30
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
    .line 128
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 131
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 132
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 134
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 135
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->fingerprint_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFixed64(IJ)V

    .line 137
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 138
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->languageCode_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 140
    :cond_3
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 142
    return-void
.end method
