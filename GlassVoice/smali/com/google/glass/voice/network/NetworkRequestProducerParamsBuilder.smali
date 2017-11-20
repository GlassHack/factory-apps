.class public Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;
.super Ljava/lang/Object;
.source "NetworkRequestProducerParamsBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;,
        Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;
    }
.end annotation


# static fields
.field private static final GET_AUTH_TOKEN_TIMEOUT:J

.field private static appVersion:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    .line 45
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->GET_AUTH_TOKEN_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 40
    sget-wide v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->GET_AUTH_TOKEN_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/Cookies;)Lcom/google/android/speech/params/NetworkRequestProducerParams;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "speechSettings"    # Lcom/google/android/speech/SpeechSettings;
    .param p2, "networkInfo"    # Lcom/google/android/speech/utils/NetworkInformation;
    .param p3, "locationHelper"    # Lcom/google/android/speech/helper/SpeechLocationHelper;
    .param p4, "locationManagerHelper"    # Lcom/google/glass/location/LocationManagerHelper;
    .param p5, "cookies"    # Lcom/google/glass/voice/network/Cookies;

    .prologue
    .line 51
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v11

    .line 53
    .local v11, "authUtils":Lcom/google/glass/auth/AuthUtils;
    new-instance v12, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;

    invoke-direct {v12, v11}, Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;-><init>(Lcom/google/glass/auth/AuthUtils;)V

    .line 54
    .local v12, "transcriptionAuth":Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;
    new-instance v2, Lcom/google/android/speech/params/NetworkRequestProducerParams;

    new-instance v3, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;

    invoke-direct {v3, v12}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$AccountHelperImpl;-><init>(Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)V

    new-instance v5, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v5, v0, v1, v12}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder$PinholeParamsBuilderImpl;-><init>(Lcom/google/glass/location/LocationManagerHelper;Lcom/google/glass/voice/network/Cookies;Lcom/google/glass/voice/network/GlassTranscriptionAuthUtils;)V

    const/4 v6, 0x0

    .line 60
    invoke-static {p0}, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->getDeviceParams(Landroid/content/Context;)Lcom/google/android/speech/params/DeviceParams;

    move-result-object v9

    new-instance v10, Lcom/google/glass/voice/network/GlassSpeechContext;

    invoke-direct {v10}, Lcom/google/glass/voice/network/GlassSpeechContext;-><init>()V

    move-object v4, p2

    move-object/from16 v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/android/speech/params/NetworkRequestProducerParams;-><init>(Lcom/google/android/speech/helper/AuthTokenHelper;Lcom/google/android/speech/utils/NetworkInformation;Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Lcom/google/android/voicesearch/speechservice/s3/VoiceSearchParamsBuilder;Lcom/google/android/speech/helper/SpeechLocationHelper;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/params/DeviceParams;Lcom/google/android/speech/context/SpeechContext;)V

    return-object v2
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 69
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    :goto_1
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-object v1, Lcom/google/glass/voice/network/NetworkRequestProducerParamsBuilder;->appVersion:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getDeviceParams(Landroid/content/Context;)Lcom/google/android/speech/params/DeviceParams;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Lcom/google/glass/voice/network/params/GlassDeviceParams;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/network/params/GlassDeviceParams;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
