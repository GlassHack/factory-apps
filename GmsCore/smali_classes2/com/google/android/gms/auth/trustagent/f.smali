.class public final Lcom/google/android/gms/auth/trustagent/f;
.super Lcom/google/android/gms/auth/trustagent/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/f;)V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.facelock"

    const-string v2, "com.android.facelock.FaceLockReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deleteGallery"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/f;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const-string v1, "auth_trust_agent_pref_trustlet_enabled_FaceUnlockTrustlet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/f;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/a;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f060006

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/f;->addPreferencesFromResource(I)V

    .line 43
    const-string v0, "auth_trust_agent_pref_face_unlock_improve_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/f;->c:Landroid/preference/Preference;

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/f;->c:Landroid/preference/Preference;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/g;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/g;-><init>(Lcom/google/android/gms/auth/trustagent/f;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    const-string v0, "auth_trust_agent_pref_face_unlock_reset_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/f;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/f;->d:Landroid/preference/Preference;

    .line 56
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/f;->d:Landroid/preference/Preference;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/h;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/h;-><init>(Lcom/google/android/gms/auth/trustagent/f;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/f;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 70
    const-string v1, "RESET_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    new-instance v1, Lcom/google/android/gms/auth/trustagent/i;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/i;-><init>(Lcom/google/android/gms/auth/trustagent/f;)V

    const-string v2, "RESET_DIALOG_FRAGMENT_TAG"

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/auth/trustagent/i;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 75
    :cond_0
    return-void
.end method
