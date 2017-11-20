.class public final Lcom/google/android/gms/auth/trustagent/bb;
.super Lcom/google/android/gms/auth/trustagent/a;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/a;-><init>()V

    .line 277
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/bb;)Landroid/preference/PreferenceScreen;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/bb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/bb;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/location/places/h;)V
    .locals 4

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 184
    :cond_0
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 190
    const v2, 0x7f1001c1

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/bb;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 197
    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Z)V

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_name_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/auth/trustagent/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trusted_place_address_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/auth/trustagent/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {p1}, Lcom/google/android/gms/location/places/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final b()V
    .locals 7

    .prologue
    .line 61
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/a;->a:Lcom/google/android/gms/auth/trustagent/ak;

    iget-object v0, v1, Lcom/google/android/gms/auth/trustagent/ak;->e:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "auth_trust_agent_pref_trusted_place_name_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "auth_trust_agent_pref_trusted_place_address_"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Lcom/google/android/gms/auth/trustagent/ak;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/google/android/gms/auth/trustagent/bd;

    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/auth/trustagent/bd;-><init>(Lcom/google/android/gms/auth/trustagent/bb;Lcom/google/android/gms/auth/trustagent/ak;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 62
    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/auth/trustagent/a;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/bb;->addPreferencesFromResource(I)V

    .line 55
    const-string v0, "auth_trust_agent_pref_trusted_places_list_key"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/bb;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/bb;->d:Landroid/preference/PreferenceScreen;

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.google"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v0, v2

    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    aget-object v4, v2, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1001ba

    invoke-virtual {p0, v1}, Lcom/google/android/gms/auth/trustagent/bb;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 57
    :goto_1
    return-void

    .line 56
    :cond_1
    array-length v0, v3

    if-ne v0, v5, :cond_2

    aget-object v0, v3, v1

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/bb;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/trustagent/bh;

    invoke-direct {v0, p0, v3}, Lcom/google/android/gms/auth/trustagent/bh;-><init>(Lcom/google/android/gms/auth/trustagent/bb;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Coffee - TrustedPlacesFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/bh;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 71
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/auth/trustagent/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 73
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 74
    const v2, 0x7f020064

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 75
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    const v2, 0x7f10018d

    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/bb;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v2, Lcom/google/android/gms/auth/trustagent/bc;

    invoke-direct {v2, p0}, Lcom/google/android/gms/auth/trustagent/bc;-><init>(Lcom/google/android/gms/auth/trustagent/bb;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-object v0
.end method

.method public final onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public final onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_trust_agent_pref_trusted_places_home_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_trust_agent_pref_trusted_places_work_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/google/android/gms/auth/trustagent/bj;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/auth/trustagent/bj;-><init>(Lcom/google/android/gms/auth/trustagent/bb;Landroid/preference/Preference;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/android/gms/auth/trustagent/bb;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "Coffee - TrustedPlacesFragment"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/trustagent/bj;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 100
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
