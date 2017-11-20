.class Lcom/android/providers/downloads/RealSystemFacade;
.super Ljava/lang/Object;
.source "RealSystemFacade.java"

# interfaces
.implements Lcom/android/providers/downloads/SystemFacade;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    .line 48
    return-void
.end method

.method private getChargePercent(Landroid/content/Intent;)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 116
    const-string v4, "level"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    .local v1, "level":I
    const-string v4, "scale"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, "scale":I
    if-eq v1, v3, :cond_0

    if-ne v2, v3, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v3

    .line 122
    :cond_1
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v0, v3, v4

    .line 123
    .local v0, "batteryPercent":F
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0
.end method

.method private isCharged(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    const-string v4, "status"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 130
    .local v1, "status":I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 132
    .local v0, "isCharged":Z
    :goto_0
    if-nez v0, :cond_0

    .line 133
    const-string v4, "DownloadManager"

    const-string v5, "Driver is not reporting charged, checking percent."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/RealSystemFacade;->getChargePercent(Landroid/content/Intent;)I

    move-result v4

    const/16 v5, 0x5f

    if-lt v4, v5, :cond_2

    move v0, v2

    .line 137
    :cond_0
    :goto_1
    return v0

    .end local v0    # "isCharged":Z
    :cond_1
    move v0, v3

    .line 130
    goto :goto_0

    .restart local v0    # "isCharged":Z
    :cond_2
    move v0, v3

    .line 134
    goto :goto_1
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getActiveNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 4
    .param p1, "uid"    # I

    .prologue
    .line 57
    iget-object v2, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 59
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 60
    const-string v2, "DownloadManager"

    const-string v3, "couldn\'t get connectivity manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x0

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 65
    .local v0, "activeInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    sget-boolean v2, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "DownloadManager"

    const-string v3, "network is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getRecommendedMaxBytesOverMobile()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/DownloadManager;->getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 74
    .local v0, "conn":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v1

    return v1
.end method

.method public isNetworkRoaming()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 79
    iget-object v5, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 81
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 82
    const-string v5, "DownloadManager"

    const-string v6, "couldn\'t get connectivity manager"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return v4

    .line 86
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 87
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 88
    .local v2, "isMobile":Z
    :goto_1
    if-eqz v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    .local v3, "isRoaming":Z
    :goto_2
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 90
    const-string v4, "DownloadManager"

    const-string v5, "network is roaming"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v4, v3

    .line 92
    goto :goto_0

    .end local v2    # "isMobile":Z
    .end local v3    # "isRoaming":Z
    :cond_2
    move v2, v4

    .line 87
    goto :goto_1

    .restart local v2    # "isMobile":Z
    :cond_3
    move v3, v4

    .line 88
    goto :goto_2
.end method

.method public isPowered()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 142
    iget-object v7, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 144
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 156
    :goto_0
    return v6

    .line 148
    :cond_0
    const-string v7, "plugged"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v3, v5

    .line 150
    .local v3, "isPlugged":Z
    :goto_1
    const-string v7, "status"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 153
    .local v4, "status":I
    const/4 v7, 0x2

    if-ne v4, v7, :cond_3

    move v2, v5

    .line 154
    .local v2, "isCharging":Z
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/RealSystemFacade;->isCharged(Landroid/content/Intent;)Z

    move-result v1

    .line 156
    .local v1, "isCharged":Z
    if-eqz v3, :cond_4

    if-nez v2, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    :goto_3
    move v6, v5

    goto :goto_0

    .end local v1    # "isCharged":Z
    .end local v2    # "isCharging":Z
    .end local v3    # "isPlugged":Z
    .end local v4    # "status":I
    :cond_2
    move v3, v6

    .line 148
    goto :goto_1

    .restart local v3    # "isPlugged":Z
    .restart local v4    # "status":I
    :cond_3
    move v2, v6

    .line 153
    goto :goto_2

    .restart local v1    # "isCharged":Z
    .restart local v2    # "isCharging":Z
    :cond_4
    move v5, v6

    .line 156
    goto :goto_3
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method public userOwnsPackage(ILjava/lang/String;)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/android/providers/downloads/RealSystemFacade;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
