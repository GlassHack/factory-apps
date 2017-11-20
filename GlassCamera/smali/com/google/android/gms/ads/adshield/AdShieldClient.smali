.class public final Lcom/google/android/gms/ads/adshield/AdShieldClient;
.super Ljava/lang/Object;


# instance fields
.field private final kG:Lcom/google/android/gms/internal/v;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/u;->b(Ljava/lang/String;Landroid/content/Context;)Lcom/google/android/gms/internal/v;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    return-void
.end method


# virtual methods
.method public addSignalsToAdRequest(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    .locals 3
    .param p1, "adRequestUrl"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/adshield/UrlParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/ads/adshield/UrlParseException;

    invoke-direct {v0}, Lcom/google/android/gms/ads/adshield/UrlParseException;-><init>()V

    throw v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/dynamic/c;->d(Lcom/google/android/gms/dynamic/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getAdRequestSignals(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/v;->c(Lcom/google/android/gms/dynamic/b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSignalsUrlKey()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v0}, Lcom/google/android/gms/internal/v;->getSignalsUrlKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAdRequestAdSense(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "adRequestUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/v;->a(Lcom/google/android/gms/dynamic/b;)Z

    move-result v0

    return v0
.end method

.method public isGoogleAdUrl(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "adUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/dynamic/c;->i(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/v;->b(Lcom/google/android/gms/dynamic/b;)Z

    move-result v0

    return v0
.end method

.method public setAdSenseDomainAndPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "adRequestDomain"    # Ljava/lang/String;
    .param p2, "adRequestPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/v;->setAdSenseDomainAndPath(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGoogleAdUrlSuffixes(Ljava/lang/String;)V
    .locals 1
    .param p1, "domainSuffixes"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/ads/adshield/AdShieldClient;->kG:Lcom/google/android/gms/internal/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/v;->setGoogleAdUrlSuffixes(Ljava/lang/String;)V

    return-void
.end method
