.class public final Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
.super Lcom/google/protobuf/nano/MessageNano;
.source "GCMRegisterNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/GCMRegisterNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GCMRegistrationRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest$Action;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private deviceHardware_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private deviceOsVersion_:Ljava/lang/String;

.field private gsfDeviceId_:J

.field private locale_:Ljava/lang/String;

.field private majorVersion_:Ljava/lang/String;

.field private registrationId_:Ljava/lang/String;

.field private version_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    sput-object v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 128
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    .line 147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 191
    iput-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    return-object v0
.end method


# virtual methods
.method public clearAction()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearDeviceHardware()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 186
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 187
    return-object p0
.end method

.method public clearDeviceId()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public clearDeviceOsVersion()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 164
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 165
    return-object p0
.end method

.method public clearGsfDeviceId()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 2

    .prologue
    .line 204
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    .line 205
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 206
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public clearMajorVersion()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearRegistrationId()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearVersion()Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 2

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    .line 142
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 143
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    if-ne p1, p0, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 213
    check-cast v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    .line 214
    .local v0, "other":Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 215
    :goto_1
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 216
    :goto_2
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 217
    :goto_3
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 218
    :goto_4
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    if-nez v3, :cond_8

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 220
    :goto_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    if-nez v3, :cond_9

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 221
    :goto_6
    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    iget-wide v5, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 215
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 216
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_5

    :cond_9
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    return v0
.end method

.method public getDeviceHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getGsfDeviceId()J
    .locals 2

    .prologue
    .line 193
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getMajorVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 274
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    .line 275
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 278
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 279
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 281
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 282
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 283
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 285
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 286
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 287
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 290
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 291
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 294
    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    .line 295
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 298
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 299
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_6
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 302
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 303
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_7
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    .line 306
    const/16 v1, 0x9

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    .line 307
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_8
    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->cachedSize:I

    .line 310
    return v0
.end method

.method public getVersion()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    return-wide v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceHardware()Z
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

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
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDeviceOsVersion()Z
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGsfDeviceId()Z
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

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
    .line 97
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMajorVersion()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegistrationId()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

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
    const/16 v7, 0x20

    const/4 v2, 0x0

    .line 226
    const/16 v0, 0x11

    .line 227
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    add-int/lit16 v0, v1, 0x20f

    .line 228
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 229
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 230
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 231
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    :goto_3
    add-int v0, v3, v1

    .line 232
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    iget-wide v5, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 233
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    :goto_4
    add-int v0, v3, v1

    .line 234
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    if-nez v3, :cond_5

    :goto_5
    add-int v0, v1, v2

    .line 235
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    iget-wide v4, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    ushr-long/2addr v4, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 236
    return v0

    .line 228
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 230
    :cond_2
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 231
    :cond_3
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_4

    .line 234
    :cond_5
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 319
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 323
    invoke-static {p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 324
    :sswitch_0
    return-object p0

    .line 329
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 330
    .local v1, "temp":I
    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 333
    :cond_1
    iput v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    .line 334
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 336
    :cond_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    goto :goto_0

    .line 341
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 342
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 346
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 347
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 351
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 352
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 356
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 357
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 361
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    .line 362
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 366
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 367
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x40

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto :goto_0

    .line 371
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 372
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit16 v2, v2, 0x80

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto/16 :goto_0

    .line 376
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    .line 377
    iget v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    goto/16 :goto_0

    .line 319
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x48 -> :sswitch_9
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
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;

    move-result-object v0

    return-object v0
.end method

.method public setAction(I)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    .line 27
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 28
    return-object p0
.end method

.method public setDeviceHardware(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 174
    if-nez p1, :cond_0

    .line 175
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 177
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    .line 178
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 179
    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 70
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    .line 71
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 72
    return-object p0
.end method

.method public setDeviceOsVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 155
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    .line 156
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 157
    return-object p0
.end method

.method public setGsfDeviceId(J)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 196
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    .line 197
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 198
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    .line 93
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 94
    return-object p0
.end method

.method public setMajorVersion(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 114
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    .line 115
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 116
    return-object p0
.end method

.method public setRegistrationId(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 48
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    .line 49
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 50
    return-object p0
.end method

.method public setVersion(J)Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 133
    iput-wide p1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    .line 134
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    .line 135
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
    .line 241
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 242
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 244
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 245
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->registrationId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 247
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 248
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 250
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 251
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 254
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->majorVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 256
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 257
    const/4 v0, 0x6

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->version_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 259
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 260
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceOsVersion_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 262
    :cond_6
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 263
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->deviceHardware_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 265
    :cond_7
    iget v0, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    .line 266
    const/16 v0, 0x9

    iget-wide v1, p0, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationRequest;->gsfDeviceId_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 268
    :cond_8
    return-void
.end method
