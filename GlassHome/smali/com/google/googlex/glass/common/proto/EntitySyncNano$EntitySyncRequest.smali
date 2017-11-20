.class public final Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "EntitySyncNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/EntitySyncNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntitySyncRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;


# instance fields
.field private bitField0_:I

.field private contactSync_:Z

.field private deviceId_:Ljava/lang/String;

.field private enabledTargetsOnly_:Z

.field private focusVersionInfo_:Ljava/lang/String;

.field private peopleApiSyncToken_:Ljava/lang/String;

.field private shareTargetSync_:Z

.field private usePeopleApi_:Z

.field private verboseServerLogging_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    .line 37
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 56
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    .line 75
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 157
    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    return-object v0
.end method


# virtual methods
.method public clearContactSync()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    .line 89
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public clearEnabledTargetsOnly()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public clearFocusVersionInfo()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 152
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 153
    return-object p0
.end method

.method public clearPeopleApiSyncToken()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public clearShareTargetSync()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    .line 108
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 109
    return-object p0
.end method

.method public clearUsePeopleApi()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    .line 70
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 71
    return-object p0
.end method

.method public clearVerboseServerLogging()Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    .line 171
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 177
    if-ne p1, p0, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 178
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 179
    check-cast v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    .line 180
    .local v0, "other":Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 185
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 186
    :goto_3
    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 188
    goto :goto_0

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 185
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    .line 188
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getContactSync()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledTargetsOnly()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    return v0
.end method

.method public getFocusVersionInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getPeopleApiSyncToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 237
    const/4 v0, 0x0

    .line 238
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    .line 240
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 242
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 243
    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 244
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 247
    const/16 v1, 0x8

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    .line 248
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_3

    .line 251
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 252
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    .line 255
    const/16 v1, 0xa

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    .line 256
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 258
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 259
    const/16 v1, 0xb

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    .line 260
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 262
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 263
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 264
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 266
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 267
    const/16 v1, 0xd

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    .line 268
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    :cond_7
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 271
    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->cachedSize:I

    .line 272
    return v0
.end method

.method public getShareTargetSync()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    return v0
.end method

.method public getUsePeopleApi()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    return v0
.end method

.method public getVerboseServerLogging()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    return v0
.end method

.method public hasContactSync()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceId()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEnabledTargetsOnly()Z
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFocusVersionInfo()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPeopleApiSyncToken()Z
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShareTargetSync()Z
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUsePeopleApi()Z
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVerboseServerLogging()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 192
    const/16 v0, 0x11

    .line 193
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 194
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    add-int v0, v5, v1

    .line 195
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    add-int v0, v5, v1

    .line 196
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    add-int v0, v5, v1

    .line 197
    mul-int/lit8 v5, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    if-eqz v1, :cond_4

    move v1, v3

    :goto_4
    add-int v0, v5, v1

    .line 198
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    :goto_5
    add-int v0, v5, v1

    .line 199
    mul-int/lit8 v5, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    :goto_6
    add-int v0, v5, v1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v5, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    if-eqz v5, :cond_7

    :goto_7
    add-int v0, v1, v3

    .line 201
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_8

    :goto_8
    add-int v0, v1, v2

    .line 202
    return v0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 194
    goto :goto_1

    :cond_2
    move v1, v4

    .line 195
    goto :goto_2

    :cond_3
    move v1, v4

    .line 196
    goto :goto_3

    :cond_4
    move v1, v4

    .line 197
    goto :goto_4

    .line 198
    :cond_5
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_5

    .line 199
    :cond_6
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_6

    :cond_7
    move v3, v4

    .line 200
    goto :goto_7

    .line 201
    :cond_8
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_8
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 281
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 285
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    .line 289
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 291
    :sswitch_0
    return-object p0

    .line 296
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    .line 297
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 301
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 302
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 306
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    .line 307
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 311
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 312
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 316
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    .line 317
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 321
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    .line 322
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 326
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 327
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto :goto_0

    .line 331
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    .line 332
    iget v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    goto/16 :goto_0

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2a -> :sswitch_1
        0x38 -> :sswitch_2
        0x40 -> :sswitch_3
        0x4a -> :sswitch_4
        0x50 -> :sswitch_5
        0x58 -> :sswitch_6
        0x62 -> :sswitch_7
        0x68 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;

    move-result-object v0

    return-object v0
.end method

.method public setContactSync(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    .line 81
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public setEnabledTargetsOnly(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setFocusVersionInfo(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 143
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    .line 144
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 145
    return-object p0
.end method

.method public setPeopleApiSyncToken(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    .line 122
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 123
    return-object p0
.end method

.method public setShareTargetSync(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    .line 100
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 101
    return-object p0
.end method

.method public setUsePeopleApi(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setVerboseServerLogging(Z)Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    .line 163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    .line 164
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
    .line 207
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 210
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x7

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->enabledTargetsOnly_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 213
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 214
    const/16 v0, 0x8

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->usePeopleApi_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 216
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_3

    .line 217
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->peopleApiSyncToken_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 219
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 220
    const/16 v0, 0xa

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->contactSync_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 222
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    .line 223
    const/16 v0, 0xb

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->shareTargetSync_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 225
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 226
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->focusVersionInfo_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 228
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 229
    const/16 v0, 0xd

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->verboseServerLogging_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 231
    :cond_7
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 233
    return-void
.end method
