.class public Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;
.super Landroid/service/trust/TrustAgentService;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/trustlet/ak;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

.field private b:Lcom/google/android/gms/auth/trustagent/d;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Landroid/content/SharedPreferences;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/service/trust/TrustAgentService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;Z)Z
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Lcom/google/android/gms/auth/trustagent/trustlet/ah;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->e:Z

    return v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 187
    const-string v0, "Coffee - GoogleTrustAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Providing trust state change: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->setManagingTrust(Z)V

    .line 189
    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 161
    const-string v0, "Coffee - GoogleTrustAgent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trust state changed, trusted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_4

    .line 164
    if-nez p2, :cond_0

    const-string p2, ""

    .line 165
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->e:Z

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d()Ljava/util/Map;

    move-result-object v0

    .line 169
    const-class v1, Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    :cond_1
    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "High confidence authentication provided to grant trust."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-boolean v3, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->e:Z

    .line 173
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->grantTrust(Ljava/lang/CharSequence;JZ)V

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_2
    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "High confidence authentication required to grant trust."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {p0, p2, v4, v5, v3}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->grantTrust(Ljava/lang/CharSequence;JZ)V

    goto :goto_0

    .line 181
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->revokeTrust()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 40
    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "GoogleTrustAgent created."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onCreate()V

    .line 44
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->K:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/auth/b/a;->N:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->setManagingTrust(Z)V

    .line 51
    :cond_1
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/d;

    invoke-direct {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;)V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/u;

    invoke-direct {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/ab;

    invoke-direct {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/f;

    invoke-direct {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e()V

    .line 59
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    new-instance v0, Lcom/google/android/gms/auth/trustagent/d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b:Lcom/google/android/gms/auth/trustagent/d;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b:Lcom/google/android/gms/auth/trustagent/d;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/e;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/trustagent/e;-><init>(Lcom/google/android/gms/auth/trustagent/d;)V

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/d;->b:Landroid/content/BroadcastReceiver;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/d;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->d:Landroid/content/SharedPreferences;

    .line 65
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "Registering broadcast receiver more than once."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->e:Z

    .line 67
    return-void

    .line 65
    :cond_3
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/auth/trustagent/l;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/l;-><init>(Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;)V

    iput-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "GoogleTrustAgent destroyed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-super {p0}, Landroid/service/trust/TrustAgentService;->onDestroy()V

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->a:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c()V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b:Lcom/google/android/gms/auth/trustagent/d;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b:Lcom/google/android/gms/auth/trustagent/d;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/d;->b:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/d;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/d;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, v0, Lcom/google/android/gms/auth/trustagent/d;->b:Landroid/content/BroadcastReceiver;

    .line 77
    :cond_0
    iput-object v3, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->b:Lcom/google/android/gms/auth/trustagent/d;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    const-string v0, "Coffee - GoogleTrustAgent"

    const-string v1, "Attempting to unregister broadcast receiver when none is registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v3, p0, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgent;->c:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method
