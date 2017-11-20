.class final Lcom/google/glass/android/net/ConnectivityManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/android/net/ConnectivityManager;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "null ConnectivityManager"

    invoke-static {p1, v0}, Lcom/google/common/base/ah;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 15
    return-void
.end method


# virtual methods
.method public final getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getBackgroundDataSetting()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public final getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getNetworkPreference()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v0

    return v0
.end method

.method public final isActiveNetworkMetered()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

.method public final isNetworkTypeValid(I)Z
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    return v0
.end method

.method public final requestRouteToHost(II)Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v0

    return v0
.end method

.method public final setNetworkPreference(I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 60
    return-void
.end method

.method public final startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    return v0
.end method
