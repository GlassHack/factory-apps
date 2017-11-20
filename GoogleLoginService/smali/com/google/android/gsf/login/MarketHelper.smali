.class public Lcom/google/android/gsf/login/MarketHelper;
.super Ljava/lang/Object;
.source "MarketHelper.java"


# instance fields
.field mBillingService:Lcom/android/vending/billing/IBillingAccountService;

.field mContext:Landroid/content/Context;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field tokenCondition:Ljava/util/concurrent/locks/Condition;

.field tokenLock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    .line 56
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    .line 59
    iput-object p1, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public allowCreditCard(Lcom/google/android/gsf/loginservice/GLSSession;)Z
    .locals 5
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    iget-boolean v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSuppressCreditCardRequestActivity:Z

    if-eqz v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    iget-boolean v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mSetupWizard:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 93
    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mPendingIntent:Landroid/app/PendingIntent;

    .line 97
    .local v1, "pi":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "appPackage":Ljava/lang/String;
    const-string v4, "com.android.settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "com.android.vending"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move v2, v3

    .line 101
    goto :goto_0
.end method

.method public bind()Lcom/android/vending/billing/IBillingAccountService;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    if-eqz v3, :cond_1

    .line 164
    iget-object v2, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    .line 201
    :cond_0
    :goto_0
    return-object v2

    .line 166
    :cond_1
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/gsf/loginservice/GLSHelper;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 168
    new-instance v3, Lcom/google/android/gsf/login/MarketHelper$1;

    invoke-direct {v3, p0}, Lcom/google/android/gsf/login/MarketHelper$1;-><init>(Lcom/google/android/gsf/login/MarketHelper;)V

    iput-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 184
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-class v6, Lcom/android/vending/billing/IBillingAccountService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".BIND"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 188
    .local v1, "isBound":Z
    if-eqz v1, :cond_0

    .line 192
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 194
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;

    if-nez v3, :cond_2

    .line 195
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenCondition:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/google/android/gsf/login/MarketHelper;->mBillingService:Lcom/android/vending/billing/IBillingAccountService;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/google/android/gsf/login/MarketHelper;->tokenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public marketAvailable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v5

    if-nez v5, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v4

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 75
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v5, "com.android.vending"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 76
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    .local v0, "bi":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 78
    .end local v0    # "bi":Landroid/content/pm/ResolveInfo;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/gsf/login/MarketHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gsf/login/MarketHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOffersValues(Lcom/google/android/gsf/loginservice/GLSSession;)V
    .locals 7
    .param p1, "session"    # Lcom/google/android/gsf/loginservice/GLSSession;

    .prologue
    const/4 v6, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->marketAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 116
    const-string v3, "GLSActivity"

    const-string v4, "Play is unavailable"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-boolean v6, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    .line 157
    :goto_0
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/login/MarketHelper;->bind()Lcom/android/vending/billing/IBillingAccountService;

    move-result-object v3

    iget-object v4, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mUsername:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/android/vending/billing/IBillingAccountService;->getOffers(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 129
    :goto_1
    if-nez v0, :cond_1

    .line 130
    iput-boolean v6, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    goto :goto_0

    .line 124
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "GLSActivity"

    const-string v4, "Error getting offers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 134
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v3, "result_code"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 135
    .local v2, "resultCode":I
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Play result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    packed-switch v2, :pswitch_data_0

    .line 154
    iput-boolean v6, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    goto :goto_0

    .line 140
    :pswitch_0
    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    .line 141
    const-string v3, "available_offer_redemption_intent"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferIntent:Landroid/content/Intent;

    goto :goto_0

    .line 145
    :pswitch_1
    iput-boolean v6, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mShowOffer:Z

    .line 146
    const-string v3, "redeemed_offer_message_html"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/google/android/gsf/loginservice/GLSSession;->mOfferMessageHtml:Ljava/lang/String;

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
