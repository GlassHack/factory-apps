.class final Lcom/google/android/gms/auth/trustagent/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/google/android/gms/auth/trustagent/af;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/trustagent/af;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/ai;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ai;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/ai;->a:Lcom/google/android/gms/auth/trustagent/af;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/ai;->a:Lcom/google/android/gms/auth/trustagent/af;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/google/android/gms/auth/trustagent/GoogleTrustAgentFaceUnlockSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/trustagent/af;->startActivity(Landroid/content/Intent;)V

    .line 253
    :goto_0
    return v4

    .line 246
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.SetupIntro"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "showTutorial"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/ai;->a:Lcom/google/android/gms/auth/trustagent/af;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/auth/trustagent/af;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
