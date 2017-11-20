.class public Lcom/google/glass/net/UserAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final glassUserAgent:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v0, "Mozilla/5.0 (Linux; Android 4.4.2; Glass 1 Build/%s; %s; %s; %s; %s; %s) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/30.0.0.0 Mobile Safari/537.36"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ro.build.version.glass"

    const-string v4, ""

    .line 23
    invoke-static {v3, v4}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/os/Build;->TAGS:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 29
    invoke-static {v3}, Lcom/google/glass/util/HashFunctions;->toMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 18
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/net/UserAgent;->glassUserAgent:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/net/UserAgent;->glassUserAgent:Ljava/lang/String;

    return-object v0
.end method
