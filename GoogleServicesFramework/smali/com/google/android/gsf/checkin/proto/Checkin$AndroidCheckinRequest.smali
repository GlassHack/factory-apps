.class public final Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Checkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AndroidCheckinRequest"
.end annotation


# instance fields
.field private accountCookie_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedSize:I

.field private checkin_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

.field private desiredBuild_:Ljava/lang/String;

.field private deviceConfiguration_:Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

.field private digest_:Ljava/lang/String;

.field private esn_:Ljava/lang/String;

.field private fragment_:I

.field private hasCheckin:Z

.field private hasDesiredBuild:Z

.field private hasDeviceConfiguration:Z

.field private hasDigest:Z

.field private hasEsn:Z

.field private hasFragment:Z

.field private hasId:Z

.field private hasImei:Z

.field private hasLocale:Z

.field private hasLoggingId:Z

.field private hasMarketCheckin:Z

.field private hasMeid:Z

.field private hasSecurityToken:Z

.field private hasSerialNumber:Z

.field private hasTimeZone:Z

.field private hasUserName:Z

.field private hasUserSerialNumber:Z

.field private hasVersion:Z

.field private id_:J

.field private imei_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private loggingId_:J

.field private macAddrType_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private macAddr_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private marketCheckin_:Ljava/lang/String;

.field private meid_:Ljava/lang/String;

.field private otaCert_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private securityToken_:J

.field private serialNumber_:Ljava/lang/String;

.field private timeZone_:Ljava/lang/String;

.field private userName_:Ljava/lang/String;

.field private userSerialNumber_:I

.field private version_:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 143
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->imei_:Ljava/lang/String;

    .line 160
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->meid_:Ljava/lang/String;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddr_:Ljava/util/List;

    .line 209
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddrType_:Ljava/util/List;

    .line 243
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->esn_:Ljava/lang/String;

    .line 277
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->id_:J

    .line 294
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->loggingId_:J

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->digest_:Ljava/lang/String;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->locale_:Ljava/lang/String;

    .line 345
    iput-object v4, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->checkin_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 365
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->desiredBuild_:Ljava/lang/String;

    .line 382
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->marketCheckin_:Ljava/lang/String;

    .line 398
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->accountCookie_:Ljava/util/List;

    .line 432
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->timeZone_:Ljava/lang/String;

    .line 449
    iput-wide v2, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->securityToken_:J

    .line 466
    iput v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->version_:I

    .line 482
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    .line 516
    iput-object v4, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->deviceConfiguration_:Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 536
    iput v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->fragment_:I

    .line 553
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userName_:Ljava/lang/String;

    .line 570
    iput v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userSerialNumber_:I

    .line 691
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->cachedSize:I

    .line 138
    return-void
.end method


# virtual methods
.method public addAccountCookie(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 415
    if-nez p1, :cond_0

    .line 416
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->accountCookie_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->accountCookie_:Ljava/util/List;

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->accountCookie_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    return-object p0
.end method

.method public addMacAddr(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 193
    if-nez p1, :cond_0

    .line 194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddr_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddr_:Ljava/util/List;

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddr_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    return-object p0
.end method

.method public addMacAddrType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddrType_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddrType_:Ljava/util/List;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddrType_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    return-object p0
.end method

.method public addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    return-object p0
.end method

.method public getAccountCookieList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->accountCookie_:Ljava/util/List;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 694
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->cachedSize:I

    if-gez v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getSerializedSize()I

    .line 698
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->cachedSize:I

    return v0
.end method

.method public getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->checkin_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    return-object v0
.end method

.method public getDesiredBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->desiredBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->deviceConfiguration_:Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->digest_:Ljava/lang/String;

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->esn_:Ljava/lang/String;

    return-object v0
.end method

.method public getFragment()I
    .locals 1

    .prologue
    .line 537
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->fragment_:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 278
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->id_:J

    return-wide v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->imei_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()J
    .locals 2

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->loggingId_:J

    return-wide v0
.end method

.method public getMacAddrList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddr_:Ljava/util/List;

    return-object v0
.end method

.method public getMacAddrTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->macAddrType_:Ljava/util/List;

    return-object v0
.end method

.method public getMarketCheckin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->marketCheckin_:Ljava/lang/String;

    return-object v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->meid_:Ljava/lang/String;

    return-object v0
.end method

.method public getOtaCertCount()I
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOtaCertList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 485
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->otaCert_:Ljava/util/List;

    return-object v0
.end method

.method public getSecurityToken()J
    .locals 2

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->securityToken_:J

    return-wide v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->serialNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasImei()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 705
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getImei()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasId()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 709
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 712
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDigest()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 713
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDigest()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 716
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasCheckin()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 717
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 720
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDesiredBuild()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 721
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDesiredBuild()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 724
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLocale()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 725
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getLocale()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 728
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLoggingId()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 729
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getLoggingId()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 732
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMarketCheckin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 733
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMarketCheckin()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 737
    :cond_7
    const/4 v0, 0x0

    .line 738
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 739
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 742
    .end local v1    # "element":Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 743
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 745
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMeid()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 746
    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMeid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 750
    :cond_9
    const/4 v0, 0x0

    .line 751
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getAccountCookieList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 752
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 755
    .end local v1    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 756
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getAccountCookieList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 758
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasTimeZone()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 759
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 762
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSecurityToken()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 763
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getSecurityToken()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeFixed64Size(IJ)I

    move-result v4

    add-int/2addr v3, v4

    .line 766
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasVersion()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 767
    const/16 v4, 0xe

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 771
    :cond_d
    const/4 v0, 0x0

    .line 772
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getOtaCertList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 773
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 776
    .end local v1    # "element":Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 777
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getOtaCertList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 779
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSerialNumber()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 780
    const/16 v4, 0x10

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 783
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasEsn()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 784
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getEsn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 787
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDeviceConfiguration()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 788
    const/16 v4, 0x12

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    .line 792
    :cond_11
    const/4 v0, 0x0

    .line 793
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 794
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 797
    .end local v1    # "element":Ljava/lang/String;
    :cond_12
    add-int/2addr v3, v0

    .line 798
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrTypeList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 800
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasFragment()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 801
    const/16 v4, 0x14

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getFragment()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 804
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserName()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 805
    const/16 v4, 0x15

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 808
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserSerialNumber()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 809
    const/16 v4, 0x16

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getUserSerialNumber()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 812
    :cond_15
    iput v3, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->cachedSize:I

    .line 813
    return v3
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->timeZone_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userName_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserSerialNumber()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userSerialNumber_:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 467
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->version_:I

    return v0
.end method

.method public hasCheckin()Z
    .locals 1

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasCheckin:Z

    return v0
.end method

.method public hasDesiredBuild()Z
    .locals 1

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDesiredBuild:Z

    return v0
.end method

.method public hasDeviceConfiguration()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDeviceConfiguration:Z

    return v0
.end method

.method public hasDigest()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDigest:Z

    return v0
.end method

.method public hasEsn()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasEsn:Z

    return v0
.end method

.method public hasFragment()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasFragment:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasId:Z

    return v0
.end method

.method public hasImei()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasImei:Z

    return v0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLocale:Z

    return v0
.end method

.method public hasLoggingId()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLoggingId:Z

    return v0
.end method

.method public hasMarketCheckin()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMarketCheckin:Z

    return v0
.end method

.method public hasMeid()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMeid:Z

    return v0
.end method

.method public hasSecurityToken()Z
    .locals 1

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSecurityToken:Z

    return v0
.end method

.method public hasSerialNumber()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSerialNumber:Z

    return v0
.end method

.method public hasTimeZone()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasTimeZone:Z

    return v0
.end method

.method public hasUserName()Z
    .locals 1

    .prologue
    .line 555
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserName:Z

    return v0
.end method

.method public hasUserSerialNumber()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserSerialNumber:Z

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasVersion:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 612
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasCheckin:Z

    if-nez v1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v0

    .line 613
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDeviceConfiguration()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 615
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 821
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 822
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 826
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 827
    :sswitch_0
    return-object p0

    .line 832
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setImei(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 836
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 840
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setDigest(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 844
    :sswitch_4
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;-><init>()V

    .line 845
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 846
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setCheckin(Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 850
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setDesiredBuild(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 854
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 858
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setLoggingId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 862
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setMarketCheckin(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 866
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddr(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 870
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setMeid(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 874
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addAccountCookie(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 878
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setTimeZone(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 882
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readFixed64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setSecurityToken(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto :goto_0

    .line 886
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setVersion(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 890
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addOtaCert(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 894
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setSerialNumber(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 898
    :sswitch_11
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setEsn(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 902
    :sswitch_12
    new-instance v1, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    invoke-direct {v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;-><init>()V

    .line 903
    .local v1, "value":Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 904
    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setDeviceConfiguration(Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 908
    .end local v1    # "value":Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->addMacAddrType(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 912
    :sswitch_14
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setFragment(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 916
    :sswitch_15
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setUserName(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 920
    :sswitch_16
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->setUserSerialNumber(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    goto/16 :goto_0

    .line 822
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x69 -> :sswitch_d
        0x70 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x92 -> :sswitch_12
        0x9a -> :sswitch_13
        0xa0 -> :sswitch_14
        0xaa -> :sswitch_15
        0xb0 -> :sswitch_16
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .param p1, "x0"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;

    move-result-object v0

    return-object v0
.end method

.method public setCheckin(Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .prologue
    .line 349
    if-nez p1, :cond_0

    .line 350
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 352
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasCheckin:Z

    .line 353
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->checkin_:Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    .line 354
    return-object p0
.end method

.method public setDesiredBuild(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDesiredBuild:Z

    .line 370
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->desiredBuild_:Ljava/lang/String;

    .line 371
    return-object p0
.end method

.method public setDeviceConfiguration(Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .prologue
    .line 520
    if-nez p1, :cond_0

    .line 521
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 523
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDeviceConfiguration:Z

    .line 524
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->deviceConfiguration_:Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    .line 525
    return-object p0
.end method

.method public setDigest(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDigest:Z

    .line 316
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->digest_:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public setEsn(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasEsn:Z

    .line 265
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->esn_:Ljava/lang/String;

    .line 266
    return-object p0
.end method

.method public setFragment(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasFragment:Z

    .line 541
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->fragment_:I

    .line 542
    return-object p0
.end method

.method public setId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 281
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasId:Z

    .line 282
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->id_:J

    .line 283
    return-object p0
.end method

.method public setImei(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasImei:Z

    .line 148
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->imei_:Ljava/lang/String;

    .line 149
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLocale:Z

    .line 333
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->locale_:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public setLoggingId(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 298
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLoggingId:Z

    .line 299
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->loggingId_:J

    .line 300
    return-object p0
.end method

.method public setMarketCheckin(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMarketCheckin:Z

    .line 387
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->marketCheckin_:Ljava/lang/String;

    .line 388
    return-object p0
.end method

.method public setMeid(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMeid:Z

    .line 165
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->meid_:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setSecurityToken(J)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSecurityToken:Z

    .line 454
    iput-wide p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->securityToken_:J

    .line 455
    return-object p0
.end method

.method public setSerialNumber(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSerialNumber:Z

    .line 248
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->serialNumber_:Ljava/lang/String;

    .line 249
    return-object p0
.end method

.method public setTimeZone(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasTimeZone:Z

    .line 437
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->timeZone_:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public setUserName(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserName:Z

    .line 558
    iput-object p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userName_:Ljava/lang/String;

    .line 559
    return-object p0
.end method

.method public setUserSerialNumber(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 574
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserSerialNumber:Z

    .line 575
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->userSerialNumber_:I

    .line 576
    return-object p0
.end method

.method public setVersion(I)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasVersion:Z

    .line 471
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->version_:I

    .line 472
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 5
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasImei()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 626
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDigest()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasCheckin()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 633
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getCheckin()Lcom/google/android/gsf/checkin/proto/Logs$AndroidCheckinProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 635
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDesiredBuild()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 636
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDesiredBuild()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 638
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLocale()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 639
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 641
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasLoggingId()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 642
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getLoggingId()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt64(IJ)V

    .line 644
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMarketCheckin()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 645
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMarketCheckin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 647
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 648
    .local v0, "element":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 650
    .end local v0    # "element":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasMeid()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 651
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMeid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 653
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getAccountCookieList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 654
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 656
    .end local v0    # "element":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 657
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 659
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSecurityToken()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 660
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getSecurityToken()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeFixed64(IJ)V

    .line 662
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasVersion()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 663
    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 665
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getOtaCertList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 666
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 668
    .end local v0    # "element":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasSerialNumber()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 669
    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 671
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasEsn()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 672
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getEsn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 674
    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasDeviceConfiguration()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 675
    const/16 v2, 0x12

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getDeviceConfiguration()Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 677
    :cond_11
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getMacAddrTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 678
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0x13

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 680
    .end local v0    # "element":Ljava/lang/String;
    :cond_12
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasFragment()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 681
    const/16 v2, 0x14

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getFragment()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 683
    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserName()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 684
    const/16 v2, 0x15

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 686
    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->hasUserSerialNumber()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 687
    const/16 v2, 0x16

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinRequest;->getUserSerialNumber()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 689
    :cond_15
    return-void
.end method
