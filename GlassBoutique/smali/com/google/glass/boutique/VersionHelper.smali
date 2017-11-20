.class public Lcom/google/glass/boutique/VersionHelper;
.super Ljava/lang/Object;
.source "VersionHelper.java"


# static fields
.field private static final BUILD_FINGERPRINT_PROPERTY:Ljava/lang/String; = "ro.build.fingerprint"

.field private static final BUILD_TIMESTAMP_PROPERTY:Ljava/lang/String; = "ro.build.date.utc"

.field private static final BUILD_TYPE_PROPERTY:Ljava/lang/String; = "ro.build.type"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/boutique/VersionHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuildFingerprint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 30
    const-string v0, "ro.build.fingerprint"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlassBuildType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    const-string v0, "ro.build.type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlassVersion()I
    .locals 4

    .prologue
    .line 18
    :try_start_0
    const-string v1, "ro.build.date.utc"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 21
    :goto_0
    return v1

    .line 19
    :catch_0
    move-exception v0

    .line 20
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/google/glass/boutique/VersionHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to extract build timestamp."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const/4 v1, -0x1

    goto :goto_0
.end method
