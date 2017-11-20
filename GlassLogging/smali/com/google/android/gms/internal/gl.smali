.class public Lcom/google/android/gms/internal/gl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/pseudonymous/PseudonymousIdApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gl$c;,
        Lcom/google/android/gms/internal/gl$b;,
        Lcom/google/android/gms/internal/gl$d;,
        Lcom/google/android/gms/internal/gl$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getToken(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/pseudonymous/PseudonymousIdApi$a;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gl$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gl$2;-><init>(Lcom/google/android/gms/internal/gl;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method

.method public setToken(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "apiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "token"    # Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/gl$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/gl$1;-><init>(Lcom/google/android/gms/internal/gl;Lcom/google/android/gms/pseudonymous/PseudonymousIdToken;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
