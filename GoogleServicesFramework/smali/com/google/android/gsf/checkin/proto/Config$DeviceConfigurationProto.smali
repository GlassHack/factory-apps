.class public final Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/proto/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DeviceConfigurationProto"
.end annotation


# instance fields
.field private cachedSize:I

.field private glEsVersion_:I

.field private glExtension_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hasFiveWayNavigation_:Z

.field private hasGlEsVersion:Z

.field private hasHardKeyboard_:Z

.field private hasHasFiveWayNavigation:Z

.field private hasHasHardKeyboard:Z

.field private hasKeyboard:Z

.field private hasMaxApkDownloadSizeMb:Z

.field private hasNavigation:Z

.field private hasScreenDensity:Z

.field private hasScreenHeight:Z

.field private hasScreenLayout:Z

.field private hasScreenWidth:Z

.field private hasTouchScreen:Z

.field private keyboard_:I

.field private maxApkDownloadSizeMb_:I

.field private nativePlatform_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private navigation_:I

.field private screenDensity_:I

.field private screenHeight_:I

.field private screenLayout_:I

.field private screenWidth_:I

.field private systemAvailableFeature_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSharedLibrary_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private systemSupportedLocale_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private touchScreen_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 41
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->touchScreen_:I

    .line 58
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->keyboard_:I

    .line 75
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->navigation_:I

    .line 92
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenLayout_:I

    .line 109
    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 126
    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 143
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenDensity_:I

    .line 160
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenWidth_:I

    .line 177
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenHeight_:I

    .line 194
    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glEsVersion_:I

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 243
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 276
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 309
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 342
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 376
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 476
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->cachedSize:I

    .line 10
    return-void
.end method


# virtual methods
.method public addGlExtension(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 359
    if-nez p1, :cond_0

    .line 360
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    return-object p0
.end method

.method public addNativePlatform(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-object p0
.end method

.method public addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 260
    if-nez p1, :cond_0

    .line 261
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    return-object p0
.end method

.method public addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-object p0
.end method

.method public addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 326
    if-nez p1, :cond_0

    .line 327
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 479
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSerializedSize()I

    .line 483
    :cond_0
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->cachedSize:I

    return v0
.end method

.method public getGlEsVersion()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glEsVersion_:I

    return v0
.end method

.method public getGlExtensionList()Ljava/util/List;
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
    .line 345
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glExtension_:Ljava/util/List;

    return-object v0
.end method

.method public getHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    return v0
.end method

.method public getHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHardKeyboard_:Z

    return v0
.end method

.method public getKeyboard()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->keyboard_:I

    return v0
.end method

.method public getMaxApkDownloadSizeMb()I
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    return v0
.end method

.method public getNativePlatformList()Ljava/util/List;
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
    .line 279
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->nativePlatform_:Ljava/util/List;

    return-object v0
.end method

.method public getNavigation()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->navigation_:I

    return v0
.end method

.method public getScreenDensity()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenDensity_:I

    return v0
.end method

.method public getScreenHeight()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenHeight_:I

    return v0
.end method

.method public getScreenLayout()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenLayout_:I

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenWidth_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 488
    const/4 v3, 0x0

    .line 489
    .local v3, "size":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getTouchScreen()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 493
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 494
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getKeyboard()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 497
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasNavigation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 498
    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getNavigation()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 501
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 502
    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenLayout()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 505
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 510
    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v4

    add-int/2addr v3, v4

    .line 513
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 514
    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenDensity()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 517
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 518
    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getGlEsVersion()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 522
    :cond_7
    const/4 v0, 0x0

    .line 523
    .local v0, "dataSize":I
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

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

    .line 524
    .local v1, "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 527
    .end local v1    # "element":Ljava/lang/String;
    :cond_8
    add-int/2addr v3, v0

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 531
    const/4 v0, 0x0

    .line 532
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_1

    .line 536
    .end local v1    # "element":Ljava/lang/String;
    :cond_9
    add-int/2addr v3, v0

    .line 537
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 540
    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 542
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_2

    .line 545
    .end local v1    # "element":Ljava/lang/String;
    :cond_a
    add-int/2addr v3, v0

    .line 546
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 548
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 549
    const/16 v4, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 552
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 553
    const/16 v4, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 557
    :cond_c
    const/4 v0, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 559
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_3

    .line 562
    .end local v1    # "element":Ljava/lang/String;
    :cond_d
    add-int/2addr v3, v0

    .line 563
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 566
    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 568
    .restart local v1    # "element":Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_4

    .line 571
    .end local v1    # "element":Ljava/lang/String;
    :cond_e
    add-int/2addr v3, v0

    .line 572
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 574
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 575
    const/16 v4, 0x11

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 578
    :cond_f
    iput v3, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->cachedSize:I

    .line 579
    return v3
.end method

.method public getSystemAvailableFeatureList()Ljava/util/List;
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
    .line 246
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemAvailableFeature_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSharedLibraryList()Ljava/util/List;
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
    .line 213
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSharedLibrary_:Ljava/util/List;

    return-object v0
.end method

.method public getSystemSupportedLocaleList()Ljava/util/List;
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
    .line 312
    iget-object v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->systemSupportedLocale_:Ljava/util/List;

    return-object v0
.end method

.method public getTouchScreen()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->touchScreen_:I

    return v0
.end method

.method public hasGlEsVersion()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasGlEsVersion:Z

    return v0
.end method

.method public hasHasFiveWayNavigation()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    return v0
.end method

.method public hasHasHardKeyboard()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasHardKeyboard:Z

    return v0
.end method

.method public hasKeyboard()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasKeyboard:Z

    return v0
.end method

.method public hasMaxApkDownloadSizeMb()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    return v0
.end method

.method public hasNavigation()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasNavigation:Z

    return v0
.end method

.method public hasScreenDensity()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenDensity:Z

    return v0
.end method

.method public hasScreenHeight()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenHeight:Z

    return v0
.end method

.method public hasScreenLayout()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenLayout:Z

    return v0
.end method

.method public hasScreenWidth()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenWidth:Z

    return v0
.end method

.method public hasTouchScreen()Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasTouchScreen:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 412
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasTouchScreen:Z

    if-nez v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 413
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasKeyboard:Z

    if-eqz v1, :cond_0

    .line 414
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasNavigation:Z

    if-eqz v1, :cond_0

    .line 415
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenLayout:Z

    if-eqz v1, :cond_0

    .line 416
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasHardKeyboard:Z

    if-eqz v1, :cond_0

    .line 417
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    if-eqz v1, :cond_0

    .line 418
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenDensity:Z

    if-eqz v1, :cond_0

    .line 419
    iget-boolean v1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasGlEsVersion:Z

    if-eqz v1, :cond_0

    .line 420
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/micro/CodedInputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 587
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 588
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 592
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 593
    :sswitch_0
    return-object p0

    .line 598
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setTouchScreen(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setKeyboard(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 606
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setNavigation(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 610
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenLayout(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 614
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setHasHardKeyboard(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 618
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setHasFiveWayNavigation(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 622
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenDensity(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 626
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setGlEsVersion(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 630
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemSharedLibrary(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 634
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemAvailableFeature(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 638
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addNativePlatform(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 642
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenWidth(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 646
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setScreenHeight(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 650
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addSystemSupportedLocale(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto :goto_0

    .line 654
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->addGlExtension(Ljava/lang/String;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto/16 :goto_0

    .line 658
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->setMaxApkDownloadSizeMb(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    goto/16 :goto_0

    .line 588
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x60 -> :sswitch_c
        0x68 -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x88 -> :sswitch_10
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;

    move-result-object v0

    return-object v0
.end method

.method public setGlEsVersion(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasGlEsVersion:Z

    .line 199
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->glEsVersion_:I

    .line 200
    return-object p0
.end method

.method public setHasFiveWayNavigation(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasFiveWayNavigation:Z

    .line 131
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasFiveWayNavigation_:Z

    .line 132
    return-object p0
.end method

.method public setHasHardKeyboard(Z)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasHardKeyboard:Z

    .line 114
    iput-boolean p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHardKeyboard_:Z

    .line 115
    return-object p0
.end method

.method public setKeyboard(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasKeyboard:Z

    .line 63
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->keyboard_:I

    .line 64
    return-object p0
.end method

.method public setMaxApkDownloadSizeMb(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasMaxApkDownloadSizeMb:Z

    .line 381
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->maxApkDownloadSizeMb_:I

    .line 382
    return-object p0
.end method

.method public setNavigation(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasNavigation:Z

    .line 80
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->navigation_:I

    .line 81
    return-object p0
.end method

.method public setScreenDensity(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenDensity:Z

    .line 148
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenDensity_:I

    .line 149
    return-object p0
.end method

.method public setScreenHeight(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenHeight:Z

    .line 182
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenHeight_:I

    .line 183
    return-object p0
.end method

.method public setScreenLayout(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenLayout:Z

    .line 97
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenLayout_:I

    .line 98
    return-object p0
.end method

.method public setScreenWidth(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenWidth:Z

    .line 165
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->screenWidth_:I

    .line 166
    return-object p0
.end method

.method public setTouchScreen(I)Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasTouchScreen:Z

    .line 46
    iput p1, p0, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->touchScreen_:I

    .line 47
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/micro/CodedOutputStreamMicro;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasTouchScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 427
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getTouchScreen()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 429
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getKeyboard()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 432
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasNavigation()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 433
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getNavigation()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 435
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenLayout()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 436
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenLayout()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 438
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasHardKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getHasHardKeyboard()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 441
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasHasFiveWayNavigation()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 442
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getHasFiveWayNavigation()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 444
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenDensity()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 445
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenDensity()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 447
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasGlEsVersion()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 448
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getGlEsVersion()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 450
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSharedLibraryList()Ljava/util/List;

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

    .line 451
    .local v0, "element":Ljava/lang/String;
    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 453
    .end local v0    # "element":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemAvailableFeatureList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 454
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_1

    .line 456
    .end local v0    # "element":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getNativePlatformList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 457
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xb

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_2

    .line 459
    .end local v0    # "element":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenWidth()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 460
    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenWidth()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 462
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasScreenHeight()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 463
    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getScreenHeight()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 465
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getSystemSupportedLocaleList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 466
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xe

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_3

    .line 468
    .end local v0    # "element":Ljava/lang/String;
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getGlExtensionList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    .restart local v0    # "element":Ljava/lang/String;
    const/16 v2, 0xf

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_4

    .line 471
    .end local v0    # "element":Ljava/lang/String;
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->hasMaxApkDownloadSizeMb()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 472
    const/16 v2, 0x11

    invoke-virtual {p0}, Lcom/google/android/gsf/checkin/proto/Config$DeviceConfigurationProto;->getMaxApkDownloadSizeMb()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 474
    :cond_f
    return-void
.end method
