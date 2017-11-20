.class public Lcom/google/android/gms/internal/fz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/Notifications;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/fz$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fz$1;-><init>(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public registerOnDataChangedListenerForAllOwners(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/people/Notifications$OnDataChanged;
    .param p3, "scopes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public registerOnDataChangedListenerForOwner(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/people/Notifications$OnDataChanged;
    .param p3, "account"    # Ljava/lang/String;
    .param p4, "pageId"    # Ljava/lang/String;
    .param p5, "scopes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/fz;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;Ljava/lang/String;Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public unregisterOnDataChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/people/Notifications$OnDataChanged;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "listener"    # Lcom/google/android/gms/people/Notifications$OnDataChanged;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/people/Notifications$OnDataChanged;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/google/android/gms/internal/fz$2;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/fz$2;-><init>(Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/people/Notifications$OnDataChanged;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/BaseImplementation$a;)Lcom/google/android/gms/common/api/BaseImplementation$a;

    move-result-object v0

    return-object v0
.end method
