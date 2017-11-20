.class public Lcom/google/android/gms/auth/api/GoogleAuthApi;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/GoogleAuthApi$a;,
        Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field private static final CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$c",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final pr:Lcom/google/android/gms/common/api/Api$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$b",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApiClientImpl;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$c;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$c;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApi;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApi$1;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/GoogleAuthApi$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApi;->pr:Lcom/google/android/gms/common/api/Api$b;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    sget-object v1, Lcom/google/android/gms/auth/api/GoogleAuthApi;->pr:Lcom/google/android/gms/common/api/Api$b;

    sget-object v2, Lcom/google/android/gms/auth/api/GoogleAuthApi;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Lcom/google/android/gms/common/api/Api$b;Lcom/google/android/gms/common/api/Api$c;[Lcom/google/android/gms/common/api/Scope;)V

    sput-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApi;->API:Lcom/google/android/gms/common/api/Api;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bs()Lcom/google/android/gms/common/api/Api$c;
    .locals 1

    sget-object v0, Lcom/google/android/gms/auth/api/GoogleAuthApi;->CLIENT_KEY:Lcom/google/android/gms/common/api/Api$c;

    return-object v0
.end method

.method public static sendRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p0, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p1, "request"    # Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/auth/api/GoogleAuthApi$GoogleAuthApiResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/l;->h(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/auth/api/GoogleAuthApi$2;

    invoke-direct {v0, p1}, Lcom/google/android/gms/auth/api/GoogleAuthApi$2;-><init>(Lcom/google/android/gms/auth/api/GoogleAuthApiRequest;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
