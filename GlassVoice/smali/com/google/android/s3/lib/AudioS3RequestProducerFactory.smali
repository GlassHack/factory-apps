.class public Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;
.super Ljava/lang/Object;
.source "AudioS3RequestProducerFactory.java"

# interfaces
.implements Lcom/google/android/s3/lib/S3LibRecognizer$S3RequestProducerFactory;


# annotations
.annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
.end annotation


# static fields
.field private static final ANDROID_PLATFORM:Ljava/lang/String; = "Android"

.field private static final TAG:Ljava/lang/String; = "AudioS3RequestProducerFactory"


# instance fields
.field private mApplicationId:Ljava/lang/String;

.field private mApplicationVersion:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;

.field private final mService:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mutator"    # Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;
    .param p3, "service"    # Ljava/lang/String;
    .annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mContext:Landroid/content/Context;

    .line 76
    invoke-virtual {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createInputStreamFactory()Lcom/google/common/base/Supplier;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mFactory:Lcom/google/common/base/Supplier;

    .line 77
    iput-object p2, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;

    .line 78
    iput-object p3, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mService:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Lcom/google/speech/s3/Audio$S3AudioInfo;

    invoke-direct {v0}, Lcom/google/speech/s3/Audio$S3AudioInfo;-><init>()V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setEncoding(I)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    const/high16 v1, 0x45fa0000    # 8000.0f

    invoke-virtual {v0, v1}, Lcom/google/speech/s3/Audio$S3AudioInfo;->setSampleRateHz(F)Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v0

    return-object v0
.end method

.method private createS3ClientInfo()Lcom/google/speech/s3/S3$S3ClientInfo;
    .locals 5

    .prologue
    .line 118
    new-instance v3, Lcom/google/speech/s3/S3$S3ClientInfo;

    invoke-direct {v3}, Lcom/google/speech/s3/S3$S3ClientInfo;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setClientId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    const-string v4, "Android"

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setPlatformVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationId(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceModel(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v1

    .line 125
    .local v1, "info":Lcom/google/speech/s3/S3$S3ClientInfo;
    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->getApplicationVersion()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "appVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v1, v0}, Lcom/google/speech/s3/S3$S3ClientInfo;->setApplicationVersion(Ljava/lang/String;)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 131
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    if-eqz v2, :cond_1

    .line 132
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayWidthPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayHeightPixels(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v3

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Lcom/google/speech/s3/S3$S3ClientInfo;->setDeviceDisplayDensityDpi(I)Lcom/google/speech/s3/S3$S3ClientInfo;

    .line 136
    :cond_1
    return-object v1
.end method

.method private createS3ClientInfoFuture()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/speech/s3/S3$S3ClientInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 111
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/google/speech/s3/S3$S3ClientInfo;>;"
    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createS3ClientInfo()Lcom/google/speech/s3/S3$S3ClientInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 112
    return-object v0
.end method

.method private createSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationId:Ljava/lang/String;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private getApplicationVersion()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 148
    iget-object v1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mApplicationVersion:Ljava/lang/String;

    return-object v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AudioS3RequestProducerFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get application version for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 162
    iget-object v2, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 164
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .line 170
    :goto_0
    return-object v0

    .line 168
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 169
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0
.end method


# virtual methods
.method protected createInputStreamFactory()Lcom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Supplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory$1;

    invoke-direct {v0, p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory$1;-><init>(Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;)V

    return-object v0
.end method

.method public createProducers()Lcom/google/android/speech/network/producers/S3RequestProducers;
    .locals 8
    .annotation runtime Lcom/google/android/shared/util/ProguardMustNotDelete;
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 93
    new-instance v0, Lcom/google/android/s3/lib/MutatableS3HeaderProducer;

    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createS3ClientInfoFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createS3AudioInfo()Lcom/google/speech/s3/Audio$S3AudioInfo;

    move-result-object v2

    invoke-direct {p0}, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->createSessionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mService:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mMutator:Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/s3/lib/MutatableS3HeaderProducer;-><init>(Ljava/util/concurrent/Future;Lcom/google/speech/s3/Audio$S3AudioInfo;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/s3/lib/MutatableS3HeaderProducer$S3RequestMutator;)V

    .line 95
    .local v0, "header":Lcom/google/android/s3/producers/S3RequestProducer;
    new-instance v6, Lcom/google/android/speech/network/producers/AmrStreamProducer;

    iget-object v1, p0, Lcom/google/android/s3/lib/AudioS3RequestProducerFactory;->mFactory:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    invoke-static {v7}, Lcom/google/android/speech/audio/AudioUtils;->getMaxAmrBytesPerS3Request(I)I

    move-result v2

    invoke-direct {v6, v1, v7, v2}, Lcom/google/android/speech/network/producers/AmrStreamProducer;-><init>(Ljava/io/InputStream;II)V

    .line 100
    .local v6, "audio":Lcom/google/android/s3/producers/S3RequestProducer;
    new-instance v1, Lcom/google/android/speech/network/producers/S3RequestProducers;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/s3/producers/S3RequestProducer;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v6, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;-><init>([Lcom/google/android/s3/producers/S3RequestProducer;)V

    return-object v1
.end method
