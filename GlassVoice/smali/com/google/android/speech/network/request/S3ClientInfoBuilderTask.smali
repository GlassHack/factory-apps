.class public Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;
.super Lcom/google/android/speech/network/request/BaseRequestBuilderTask;
.source "S3ClientInfoBuilderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/speech/network/request/BaseRequestBuilderTask",
        "<",
        "Lcom/google/speech/s3/S3$S3ClientInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "S3ClientInfoBuilderTask"


# instance fields
.field private final mAppId:Ljava/lang/String;

.field private final mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

.field private final mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

.field private final mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

.field private final mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

.field private final mTriggerApplicationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/context/SpeechContext;Lcom/google/android/speech/SpeechSettings;Ljava/lang/String;Lcom/google/android/speech/params/DeviceParams;Ljava/lang/String;)V
    .locals 1
    .param p1, "locationHelper"    # Lcom/google/android/speech/helper/SpeechLocationHelper;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2, "speechContext"    # Lcom/google/android/speech/context/SpeechContext;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p3, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p4, "appId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p5, "deviceParams"    # Lcom/google/android/speech/params/DeviceParams;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p6, "triggerApplicationId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 46
    const-string v0, "S3ClientInfoBuilderTask"

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/request/BaseRequestBuilderTask;-><init>(Ljava/lang/String;)V

    .line 47
    iput-object p1, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    .line 48
    iput-object p2, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    .line 49
    iput-object p3, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    .line 50
    iput-object p4, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mAppId:Ljava/lang/String;

    .line 51
    iput-object p5, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    .line 52
    iput-object p6, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected build()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 57
    new-instance v10, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v10}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    const-string v11, "Android"

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mAppId:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v11}, Lcom/google/android/speech/params/DeviceParams;->getApplicationVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v11}, Lcom/google/android/speech/params/DeviceParams;->getUserAgent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setUserAgent(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v4

    .line 66
    .local v4, "info":Lcom/google/speech/s3/S3$S3ClientInfo;
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechSettings:Lcom/google/android/speech/SpeechSettings;

    invoke-interface {v10}, Lcom/google/android/speech/SpeechSettings;->getExperimentIds()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 68
    .local v2, "experimentIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mLocationHelper:Lcom/google/android/speech/helper/SpeechLocationHelper;

    invoke-interface {v10}, Lcom/google/android/speech/helper/SpeechLocationHelper;->getAndroidLocation()Landroid/location/Location;

    move-result-object v6

    .line 69
    .local v6, "location":Landroid/location/Location;
    if-nez v6, :cond_1

    .line 70
    const-string v10, "S3ClientInfoBuilderTask"

    const-string v11, "build() : Location = null"

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 86
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "S3ClientInfoBuilderTask"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    .local v7, "message":Ljava/lang/StringBuilder;
    const-string v10, "build() : ExperimentIds = ["

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v0, v4, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 89
    .local v1, "experimentId":Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "experimentId":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "message":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .restart local v7    # "message":Ljava/lang/StringBuilder;
    new-instance v10, Landroid/util/StringBuilderPrinter;

    invoke-direct {v10, v7}, Landroid/util/StringBuilderPrinter;-><init>(Ljava/lang/StringBuilder;)V

    const-string v11, "build() : Location = "

    invoke-virtual {v6, v10, v11}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 75
    const-string v10, "S3ClientInfoBuilderTask"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 78
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mSpeechContext:Lcom/google/android/speech/context/SpeechContext;

    invoke-interface {v10}, Lcom/google/android/speech/context/SpeechContext;->getRegionExperimentSupplier()Lcom/google/common/base/Supplier;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/speech/params/RegionExperiment;

    .line 79
    .local v9, "regionExperiment":Lcom/google/android/speech/params/RegionExperiment;
    invoke-virtual {v9, v6}, Lcom/google/android/speech/params/RegionExperiment;->isLocationInsideRegion(Landroid/location/Location;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 80
    invoke-virtual {v9}, Lcom/google/android/speech/params/RegionExperiment;->getExperimentId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v9    # "regionExperiment":Lcom/google/android/speech/params/RegionExperiment;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .local v3, "i$":I
    .restart local v5    # "len$":I
    :cond_3
    const-string v10, " ]"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v10, "S3ClientInfoBuilderTask"

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12}, Lcom/google/android/shared/util/L;->d(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 95
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mDeviceParams:Lcom/google/android/speech/params/DeviceParams;

    invoke-interface {v10}, Lcom/google/android/speech/params/DeviceParams;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 96
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v8, :cond_4

    .line 97
    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v10}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    iget v11, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v10

    iget v11, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v10, v11}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 102
    :cond_4
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    if-eqz v10, :cond_5

    .line 103
    iget-object v10, p0, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->mTriggerApplicationId:Ljava/lang/String;

    invoke-virtual {v4, v10}, Lcom/google/speech/s3/S3$S3ClientInfo;->setTriggerApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 106
    :cond_5
    const-class v10, Ljava/lang/String;

    invoke-static {v2, v10}, Lcom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v4, Lcom/google/speech/s3/S3$S3ClientInfo;->experimentId:[Ljava/lang/String;

    .line 107
    return-object v4
.end method

.method protected bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/google/android/speech/network/request/S3ClientInfoBuilderTask;->build()Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v0

    return-object v0
.end method
