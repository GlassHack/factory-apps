.class public final Lcom/google/android/gms/internal/t;
.super Lcom/google/android/gms/internal/v$a;


# instance fields
.field private final kH:Lcom/google/android/gms/internal/g;

.field private final kI:Lcom/google/android/gms/internal/k;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/v$a;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/j;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/t;->kH:Lcom/google/android/gms/internal/g;

    new-instance v0, Lcom/google/android/gms/internal/k;

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->kH:Lcom/google/android/gms/internal/g;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/k;-><init>(Lcom/google/android/gms/internal/g;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/b;
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;
    :try_end_0
    .catch Lcom/google/android/gms/internal/l; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/dynamic/b;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/google/android/gms/dynamic/b;)Z
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/k;->isGoogleAdUrl(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public c(Lcom/google/android/gms/dynamic/b;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->kH:Lcom/google/android/gms/internal/g;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignalsUrlKey()Ljava/lang/String;
    .locals 1

    const-string v0, "ms"

    return-object v0
.end method

.method public setAdSenseDomainAndPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "adRequestDomain"    # Ljava/lang/String;
    .param p2, "adRequestPath"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/k;->setAdSenseDomainAndPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGoogleAdUrlSuffixes(Ljava/lang/String;)V
    .locals 1
    .param p1, "domainSuffixes"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/t;->kI:Lcom/google/android/gms/internal/k;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/k;->setGoogleAdUrlSuffixes(Ljava/lang/String;)V

    return-void
.end method
