.class public Lcom/google/android/gms/usagereporting/UsageReporting;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/usagereporting/UsageReporting$a;
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

.field private static final CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/internal/gs;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/gs;",
            ">;"
        }
    .end annotation
.end field

.field public static final UsageReportingApi:Lcom/google/android/gms/usagereporting/UsageReportingApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReporting;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/usagereporting/UsageReporting$1;

    invoke-direct {v0}, Lcom/google/android/gms/usagereporting/UsageReporting$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReporting;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/usagereporting/UsageReporting;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/usagereporting/UsageReporting;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReporting;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/gr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gr;-><init>()V

    sput-object v0, Lcom/google/android/gms/usagereporting/UsageReporting;->UsageReportingApi:Lcom/google/android/gms/usagereporting/UsageReportingApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bs()Lcom/google/android/gms/common/api/Api$c;
    .locals 1

    sget-object v0, Lcom/google/android/gms/usagereporting/UsageReporting;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method

.method public static isUsageReportingServiceAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/internal/gs;->isUsageReportingServiceAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
