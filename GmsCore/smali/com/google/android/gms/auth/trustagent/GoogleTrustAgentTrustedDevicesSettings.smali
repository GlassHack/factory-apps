.class public Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;
.super Lcom/google/android/gms/auth/trustagent/aq;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/aq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final e()Landroid/preference/PreferenceFragment;
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/google/android/gms/auth/trustagent/at;

    invoke-direct {v0}, Lcom/google/android/gms/auth/trustagent/at;-><init>()V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 45
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/at;

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 51
    :pswitch_0
    invoke-virtual {v0, p3}, Lcom/google/android/gms/auth/trustagent/at;->a(Landroid/content/Intent;)Z

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {v0, p3}, Lcom/google/android/gms/auth/trustagent/at;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/aq;->onNewIntent(Landroid/content/Intent;)V

    .line 20
    invoke-virtual {p0, p1}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->setIntent(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 25
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/aq;->onResume()V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.TrustAgentIdOfNotificationToClose"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.auth.TrustAgentIdOfNotificationToClose"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 32
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 34
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/aq;->n:Landroid/preference/PreferenceFragment;

    check-cast v0, Lcom/google/android/gms/auth/trustagent/at;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentTrustedDevicesSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/at;->a(Landroid/content/Intent;)Z

    .line 41
    :cond_1
    return-void
.end method
