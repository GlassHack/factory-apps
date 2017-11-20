.class public Lcom/google/android/gms/location/places/Places;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/places/Places$1;,
        Lcom/google/android/gms/location/places/Places$a;,
        Lcom/google/android/gms/location/places/Places$b;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/location/places/Places$b;",
            ">;"
        }
    .end annotation
.end field

.field static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/internal/dh;",
            ">;"
        }
    .end annotation
.end field

.field public static final PlacesApi:Lcom/google/android/gms/location/places/PlacesApi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/location/places/Places$a;

    invoke-direct {v1}, Lcom/google/android/gms/location/places/Places$a;-><init>()V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/location/places/i;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/Places;->PlacesApi:Lcom/google/android/gms/location/places/PlacesApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delegatedApi(Ljava/lang/String;)Lcom/google/android/gms/common/api/Api;
    .locals 4
    .param p0, "delegatorPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/location/places/Places$b;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/android/gms/location/places/Places$a;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/places/Places$a;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/google/android/gms/location/places/Places;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    return-object v0
.end method
