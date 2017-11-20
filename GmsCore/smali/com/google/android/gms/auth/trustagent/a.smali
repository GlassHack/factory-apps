.class public abstract Lcom/google/android/gms/auth/trustagent/a;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field a:Lcom/google/android/gms/auth/trustagent/ak;

.field b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/a;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/a;->b:Z

    .line 100
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/a;->b()V

    .line 101
    return-void
.end method


# virtual methods
.method protected final a()Lcom/google/android/gms/auth/trustagent/ak;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    return-object v0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance v0, Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "auth_"

    new-instance v3, Lcom/google/android/gms/auth/trustagent/b;

    invoke-direct {v3, p0}, Lcom/google/android/gms/auth/trustagent/b;-><init>(Lcom/google/android/gms/auth/trustagent/a;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/auth/trustagent/ak;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/auth/trustagent/ao;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, v0, Lcom/google/android/gms/auth/trustagent/ak;->a:Landroid/content/Context;

    const-class v4, Lcom/google/android/gms/auth/trustagent/PreferenceService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Coffee - PreferenceServiceClient"

    const-string v1, "Failed to start PreferenceService. Preferences won\'t work"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iput-object v2, v0, Lcom/google/android/gms/auth/trustagent/ak;->f:Lcom/google/android/gms/auth/trustagent/q;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ak;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 107
    iput-object v2, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    .line 108
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/a;->b:Z

    .line 92
    return-void
.end method

.method public final onResume()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 68
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/a;->c:Z

    if-nez v0, :cond_1

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/a;->c:Z

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;->c()V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/ak;->b()V

    goto :goto_0
.end method
