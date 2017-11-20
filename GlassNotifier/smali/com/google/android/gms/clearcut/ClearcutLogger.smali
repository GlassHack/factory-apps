.class public final Lcom/google/android/gms/clearcut/ClearcutLogger;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;,
        Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/jk;",
            ">;"
        }
    .end annotation
.end field

.field public static final ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;


# instance fields
.field private final RS:I

.field private RT:Ljava/lang/String;

.field private RU:I

.field private RV:Ljava/lang/String;

.field private RW:Ljava/lang/String;

.field private final RX:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

.field private final mPackageName:Ljava/lang/String;

.field private final wN:Lcom/google/android/gms/common/util/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$1;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/ClearcutLogger$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/clearcut/ClearcutLogger;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/jj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jj;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/ClearcutLogger;->ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    sget-object v5, Lcom/google/android/gms/clearcut/ClearcutLogger;->ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    invoke-static {}, Lcom/google/android/gms/common/util/g;->jH()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLoggerApi;Lcom/google/android/gms/common/util/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLoggerApi;Lcom/google/android/gms/common/util/e;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSource"    # I
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;
    .param p5, "loggerApi"    # Lcom/google/android/gms/clearcut/ClearcutLoggerApi;
    .param p6, "clock"    # Lcom/google/android/gms/common/util/e;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RX:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->D(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RS:I

    iput p2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RU:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RW:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->wN:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSourceName"    # Ljava/lang/String;
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;

    .prologue
    sget-object v5, Lcom/google/android/gms/clearcut/ClearcutLogger;->ClearcutLoggerApi:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    invoke-static {}, Lcom/google/android/gms/common/util/g;->jH()Lcom/google/android/gms/common/util/e;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/clearcut/ClearcutLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLoggerApi;Lcom/google/android/gms/common/util/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLoggerApi;Lcom/google/android/gms/common/util/e;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logSourceName"    # Ljava/lang/String;
    .param p3, "uploadAccountName"    # Ljava/lang/String;
    .param p4, "loggingId"    # Ljava/lang/String;
    .param p5, "loggerApi"    # Lcom/google/android/gms/clearcut/ClearcutLoggerApi;
    .param p6, "clock"    # Lcom/google/android/gms/common/util/e;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RX:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->D(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RS:I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mLogSourceName may not be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RU:I

    iput-object p2, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RT:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RW:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->wN:Lcom/google/android/gms/common/util/e;

    return-void
.end method

.method private D(Landroid/content/Context;)I
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v1, "ClearcutLogger"

    const-string v2, "This can\'t happen."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/clearcut/ClearcutLogger;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RU:I

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RV:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RW:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/common/util/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->wN:Lcom/google/android/gms/common/util/e;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/gms/clearcut/ClearcutLogger;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/clearcut/ClearcutLogger;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RS:I

    return v0
.end method

.method static synthetic h(Lcom/google/android/gms/clearcut/ClearcutLogger;)Lcom/google/android/gms/clearcut/ClearcutLoggerApi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RX:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    return-object v0
.end method


# virtual methods
.method public flush(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "time"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RX:Lcom/google/android/gms/clearcut/ClearcutLoggerApi;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/clearcut/ClearcutLoggerApi;->flush(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public getLogSource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RU:I

    return v0
.end method

.method public getLogSourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RT:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RW:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/ClearcutLogger;->RV:Ljava/lang/String;

    return-object v0
.end method

.method public newEvent(Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 2
    .param p1, "extensionProducer"    # Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;

    .prologue
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;Lcom/google/android/gms/clearcut/ClearcutLogger$MessageProducer;Lcom/google/android/gms/clearcut/ClearcutLogger$1;)V

    return-object v0
.end method

.method public newEvent(Lcom/google/android/gms/internal/xt;)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 3
    .param p1, "extension"    # Lcom/google/android/gms/internal/xt;

    .prologue
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    invoke-static {p1}, Lcom/google/android/gms/internal/xt;->toByteArray(Lcom/google/android/gms/internal/xt;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$1;)V

    return-object v0
.end method

.method public newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;
    .locals 2
    .param p1, "extensionBytes"    # [B

    .prologue
    new-instance v0, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;-><init>(Lcom/google/android/gms/clearcut/ClearcutLogger;[BLcom/google/android/gms/clearcut/ClearcutLogger$1;)V

    return-object v0
.end method
