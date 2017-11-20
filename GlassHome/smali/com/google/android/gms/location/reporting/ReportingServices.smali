.class public Lcom/google/android/gms/location/reporting/ReportingServices;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/reporting/ReportingServices$a;
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
            "Lcom/google/android/gms/internal/dy;",
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
            "Lcom/google/android/gms/internal/dy;",
            ">;"
        }
    .end annotation
.end field

.field public static ReportingApi:Lcom/google/android/gms/location/reporting/Reporting;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingServices;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/location/reporting/ReportingServices$1;

    invoke-direct {v0}, Lcom/google/android/gms/location/reporting/ReportingServices$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingServices;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/location/reporting/ReportingServices;->CLIENT_BUILDER:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/location/reporting/ReportingServices;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingServices;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/dz;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/reporting/ReportingServices;->ReportingApi:Lcom/google/android/gms/location/reporting/Reporting;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bs()Lcom/google/android/gms/common/api/Api$c;
    .locals 1

    sget-object v0, Lcom/google/android/gms/location/reporting/ReportingServices;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method
