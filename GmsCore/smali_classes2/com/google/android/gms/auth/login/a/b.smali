.class public final Lcom/google/android/gms/auth/login/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/content/ServiceConnection;

.field c:Lcom/android/c/a/a;

.field d:Ljava/util/concurrent/locks/Lock;

.field e:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/login/a/b;->e:Ljava/util/concurrent/locks/Condition;

    .line 117
    iput-object p1, p0, Lcom/google/android/gms/auth/login/a/b;->a:Landroid/content/Context;

    .line 118
    return-void
.end method

.method public static a(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 81
    const-string v0, "showOffer"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "showOffer"

    const-string v1, "showOffer"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    :cond_0
    const-string v0, "offerIntent"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "offerIntent"

    const-string v1, "offerIntent"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 89
    :cond_1
    const-string v0, "offerMessageHtml"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    const-string v0, "offerMessageHtml"

    const-string v1, "offerMessageHtml"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    :cond_2
    return-void
.end method

.method private a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a/b;->b()Lcom/android/c/a/a;

    move-result-object v1

    if-nez v1, :cond_1

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 133
    :try_start_0
    const-string v2, "com.android.vending"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 134
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.vending.billing.ADD_CREDIT_CARD"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b()Lcom/android/c/a/a;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 197
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;

    if-eqz v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 200
    :cond_1
    const-string v1, "calling this from your main thread can lead to deadlock"

    invoke-static {v1}, Lcom/google/android/gms/common/internal/aj;->c(Ljava/lang/String;)V

    .line 202
    new-instance v1, Lcom/google/android/gms/auth/login/a/c;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/login/a/c;-><init>(Lcom/google/android/gms/auth/login/a/b;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->b:Landroid/content/ServiceConnection;

    .line 217
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.IBillingAccountService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/google/android/gms/auth/login/a/b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/auth/login/a/b;->b:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 221
    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;

    if-nez v1, :cond_2

    .line 228
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->e:Ljava/util/concurrent/locks/Condition;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/login/a/b;->c:Lcom/android/c/a/a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/auth/login/a/b;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 147
    const-string v1, "showOffer"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 149
    const-string v1, "GLSActivity"

    const-string v2, "Play is unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :cond_1
    const/4 v2, 0x0

    .line 155
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/login/a/b;->b()Lcom/android/c/a/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/c/a/a;->b(Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 161
    :goto_1
    if-eqz v1, :cond_0

    .line 165
    const-string v2, "result_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 166
    const-string v3, "GLSActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Play result: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    packed-switch v2, :pswitch_data_0

    .line 187
    const-string v1, "showOffer"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 156
    :catch_0
    move-exception v1

    .line 157
    const-string v3, "GLSActivity"

    const-string v4, "Error getting offers"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    goto :goto_1

    .line 171
    :pswitch_0
    const-string v2, "showOffer"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 172
    const-string v2, "offerIntent"

    const-string v3, "available_offer_redemption_intent"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v2, "showOffer"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v2, "offerMessageHtml"

    const-string v3, "redeemed_offer_message_html"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
