.class public Lcom/google/android/gms/internal/rs;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/people/ContactsSync;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/people/People$BooleanResult;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSyncToContactsEnabled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rs$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/rs$3;-><init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public setSyncToContactsEnabled(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .locals 4
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setSyncToContactsEnabled"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rs$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/rs$2;-><init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Z)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public setSyncToContactsSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "enableForAccount"    # Z
    .param p4, "syncTarget"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setSyncToContactsSettings"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rs$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/rs$4;-><init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z[Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method

.method public syncRawContact(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 3
    .param p1, "googleApiClient"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "rawContactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Result;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Lcom/google/android/gms/internal/qz;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "syncRawContact"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/qz;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/rs$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/rs$1;-><init>(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;

    move-result-object v0

    return-object v0
.end method
