.class public abstract Lcom/google/android/gms/auth/trustagent/trustlet/z;
.super Lcom/google/android/gms/auth/trustagent/trustlet/af;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;

.field b:Z

.field c:Z

.field private g:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;-><init>()V

    return-void
.end method

.method private i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth_unlock_attempt_count_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()I
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "Coffee - OneTimeAuthTrustlet"

    const-string v1, "Registering broadcast receiver more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    return-void

    .line 153
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 154
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 155
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 156
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/aa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/aa;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/z;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    .line 190
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 195
    const-string v0, "Coffee - OneTimeAuthTrustlet"

    const-string v1, "Attempting to unregister broadcast receiver when none is registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 123
    return-void
.end method

.method protected final a(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    const-string v0, "Coffee - OneTimeAuthTrustlet"

    const-string v1, "handleUserAuthentication called when max number of unlock attempts reached."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    if-nez v0, :cond_2

    .line 66
    const-string v0, "Coffee - OneTimeAuthTrustlet"

    const-string v1, "handleUserAuthentication call unexpected (and ignored)."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 69
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    const-string v0, "Successfully authenticated using one time trustlet."

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->c:Z

    .line 74
    iput-boolean v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    goto :goto_0

    .line 76
    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->j()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a(I)V

    .line 77
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "Coffee - OneTimeAuthTrustlet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum number of failed unlock attempts for trustlet "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", disabled until device unlocked."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->f()V

    .line 81
    iput-boolean v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->b:Z

    goto :goto_0
.end method

.method protected abstract a()Z
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g:Landroid/content/SharedPreferences;

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/z;->g:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->a(I)V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->k()V

    .line 93
    return-void
.end method

.method protected b(Z)V
    .locals 0

    .prologue
    .line 97
    if-eqz p1, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->k()V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->l()V

    goto :goto_0
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->l()V

    .line 107
    return-void
.end method

.method protected abstract f()V
.end method

.method g()Z
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->j()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
