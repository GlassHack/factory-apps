.class final Lcom/google/glass/android/net/ConnectivityManagerImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerImpl.java"

# interfaces
.implements Lcom/google/glass/android/net/ConnectivityManager;


# instance fields
.field private final connectivityManager:Landroid/net/ConnectivityManager;


# direct methods
.method constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 1
    .param p1, "connectivityManager"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "null ConnectivityManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 15
    return-void
.end method


# virtual methods
.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPreference()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v0

    return v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

.method public isNetworkTypeValid(I)Z
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 49
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    return v0
.end method

.method public setNetworkPreference(I)V
    .locals 1
    .param p1, "preference"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/android/net/ConnectivityManagerImpl;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    .line 55
    return-void
.end method
