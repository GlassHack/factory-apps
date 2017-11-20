.class public Lcom/google/glass/voice/network/GlassS3RequestProducers;
.super Lcom/google/android/speech/network/producers/S3RequestProducers;
.source "GlassS3RequestProducers.java"


# instance fields
.field private final delegate:Lcom/google/android/speech/network/producers/S3RequestProducers;

.field private final locale:Ljava/util/Locale;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Lcom/google/android/speech/network/producers/S3RequestProducers;)V
    .locals 1
    .param p1, "producers"    # Lcom/google/android/speech/network/producers/S3RequestProducers;

    .prologue
    .line 23
    invoke-static {}, Lcom/google/glass/locale/LocaleProvider;->getInstance()Lcom/google/glass/locale/LocaleProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/locale/LocaleProvider;->get()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/network/GlassS3RequestProducers;-><init>(Lcom/google/android/speech/network/producers/S3RequestProducers;Ljava/util/Locale;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/google/android/speech/network/producers/S3RequestProducers;Ljava/util/Locale;)V
    .locals 1
    .param p1, "producers"    # Lcom/google/android/speech/network/producers/S3RequestProducers;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 26
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/s3/producers/S3RequestProducer;

    invoke-direct {p0, v0}, Lcom/google/android/speech/network/producers/S3RequestProducers;-><init>([Lcom/google/android/s3/producers/S3RequestProducer;)V

    .line 18
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 27
    iput-object p1, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->delegate:Lcom/google/android/speech/network/producers/S3RequestProducers;

    .line 28
    iput-object p2, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->locale:Ljava/util/Locale;

    .line 29
    return-void
.end method


# virtual methods
.method public closeAll()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->delegate:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v0}, Lcom/google/android/speech/network/producers/S3RequestProducers;->closeAll()V

    .line 68
    return-void
.end method

.method getAdditionalLanguages()[Lcom/google/speech/s3/S3$Locale;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassS3RequestProducers;->isEnglishSetting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Including en_US as the additional language"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v1, Lcom/google/speech/s3/S3$Locale;

    invoke-direct {v1}, Lcom/google/speech/s3/S3$Locale;-><init>()V

    const-string v2, "en_US"

    invoke-virtual {v1, v2}, Lcom/google/speech/s3/S3$Locale;->setLocale(Ljava/lang/String;)Lcom/google/speech/s3/S3$Locale;

    move-result-object v1

    .line 51
    invoke-virtual {v1, v5}, Lcom/google/speech/s3/S3$Locale;->setFormat(I)Lcom/google/speech/s3/S3$Locale;

    move-result-object v0

    .line 52
    .local v0, "defaultLocale":Lcom/google/speech/s3/S3$Locale;
    new-array v1, v5, [Lcom/google/speech/s3/S3$Locale;

    aput-object v0, v1, v4

    .line 55
    .end local v0    # "defaultLocale":Lcom/google/speech/s3/S3$Locale;
    :goto_0
    return-object v1

    :cond_0
    new-array v1, v4, [Lcom/google/speech/s3/S3$Locale;

    goto :goto_0
.end method

.method public getRequest()Lcom/google/speech/s3/S3$S3Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/shared/speech/exception/NetworkRecognizeException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->delegate:Lcom/google/android/speech/network/producers/S3RequestProducers;

    invoke-virtual {v2}, Lcom/google/android/speech/network/producers/S3RequestProducers;->getRequest()Lcom/google/speech/s3/S3$S3Request;

    move-result-object v0

    .line 34
    .local v0, "request":Lcom/google/speech/s3/S3$S3Request;
    if-eqz v0, :cond_0

    .line 36
    iget-object v2, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "request: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/google/glass/protobuf/ProtoDebugUtils;->lazyAsciiDebug(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object v2, v0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    if-eqz v2, :cond_0

    .line 39
    iget-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 40
    .local v1, "s3UserInfoExtention":Lcom/google/speech/s3/S3$S3UserInfo;
    invoke-virtual {p0}, Lcom/google/glass/voice/network/GlassS3RequestProducers;->getAdditionalLanguages()[Lcom/google/speech/s3/S3$Locale;

    move-result-object v2

    iput-object v2, v1, Lcom/google/speech/s3/S3$S3UserInfo;->additionalLanguages:[Lcom/google/speech/s3/S3$Locale;

    .line 41
    iput-object v1, v0, Lcom/google/speech/s3/S3$S3Request;->s3UserInfoExtension:Lcom/google/speech/s3/S3$S3UserInfo;

    .line 44
    .end local v1    # "s3UserInfoExtention":Lcom/google/speech/s3/S3$S3UserInfo;
    :cond_0
    return-object v0
.end method

.method isEnglishSetting()Z
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/network/GlassS3RequestProducers;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
