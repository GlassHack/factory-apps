.class public final Lcom/google/android/gms/auth/trustagent/af;
.super Lcom/google/android/gms/auth/trustagent/a;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private c:Landroid/preference/Preference;

.field private d:Landroid/preference/Preference;

.field private e:Landroid/preference/Preference;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/af;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->f:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/af;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->g:Z

    return v0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    .line 99
    if-eqz v2, :cond_2

    iget-object v0, v2, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 101
    :goto_0
    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    const-string v4, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "auth_trust_agent_pref_trusted_place_name_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-virtual {v2, v0, v4}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 99
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 124
    const v0, 0x7f1001a6

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/af;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->h:Z

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const v0, 0x7f100190

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const v0, 0x7f10019a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 136
    :cond_1
    const v0, 0x7f100199

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 279
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;)I

    move-result v0

    .line 280
    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 7

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->g:Z

    if-eqz v0, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "auth_trust_agent_pref_trusted_bluetooth_title"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const v5, 0x7f1001b8

    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->g:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/x;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/gms/auth/trustagent/trustlet/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->b()[Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_5

    aget-object v5, v3, v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, ", "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_9

    const v0, 0x7f1001a3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->h:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/af;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->i:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    :cond_8
    return-void

    .line 261
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/trustagent/a;->onActivityResult(IILandroid/content/Intent;)V

    .line 287
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    const-string v1, "auth_trust_agent_pref_trustlet_enabled_FaceUnlockTrustlet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Z)V

    .line 291
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const v5, 0x7f100190

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/a;->onCreate(Landroid/os/Bundle;)V

    .line 143
    const v0, 0x7f06000a

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->addPreferencesFromResource(I)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 147
    const-string v0, "auth_trust_agent_pref_trusted_devices_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    .line 151
    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :goto_0
    const-string v0, "auth_trust_agent_pref_trusted_places_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    .line 186
    sget-object v0, Lcom/google/android/gms/auth/b/a;->K:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 187
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    :goto_1
    const-string v0, "auth_trust_agent_pref_face_unlock_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/af;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    .line 220
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->c(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->i:Z

    .line 224
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    :cond_0
    :goto_2
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/af;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/auth/b/a;->L:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->f:Z

    .line 162
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/auth/b/a;->M:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->g:Z

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->c:Landroid/preference/Preference;

    new-instance v4, Lcom/google/android/gms/auth/trustagent/ag;

    invoke-direct {v4, p0}, Lcom/google/android/gms/auth/trustagent/ag;-><init>(Lcom/google/android/gms/auth/trustagent/af;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 160
    goto :goto_3

    :cond_4
    move v0, v2

    .line 162
    goto :goto_4

    .line 189
    :cond_5
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/af;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 190
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    invoke-virtual {p0, v5}, Lcom/google/android/gms/auth/trustagent/af;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 194
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v4, "location"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 196
    const-string v4, "gps"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "network"

    invoke-virtual {v0, v4}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->h:Z

    .line 201
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->d:Landroid/preference/Preference;

    new-instance v4, Lcom/google/android/gms/auth/trustagent/ah;

    invoke-direct {v4, p0}, Lcom/google/android/gms/auth/trustagent/ah;-><init>(Lcom/google/android/gms/auth/trustagent/af;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 196
    goto :goto_5

    .line 226
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/af;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/f;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 227
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 229
    :cond_a
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/af;->i:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 234
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/af;->e:Landroid/preference/Preference;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/ai;

    invoke-direct {v1, p0}, Lcom/google/android/gms/auth/trustagent/ai;-><init>(Lcom/google/android/gms/auth/trustagent/af;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto/16 :goto_2
.end method
