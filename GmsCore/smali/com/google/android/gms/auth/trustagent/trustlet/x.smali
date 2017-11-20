.class public final Lcom/google/android/gms/auth/trustagent/trustlet/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    .line 40
    return-void
.end method

.method private a(Ljava/util/Set;[Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 109
    array-length v2, p2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 110
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    :goto_1
    return v0

    .line 109
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-class v1, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Landroid/nfc/tech/Ndef;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-class v1, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    array-length v3, p2

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, p2, v1

    .line 117
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 118
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 124
    :cond_3
    const-string v1, "Coffee - NfcTrustletController"

    const-string v2, "no available tech code for tag"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/y;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/y;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/x;B)V

    throw v1
.end method

.method private c()Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 171
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    const-string v1, "auth_trust_agent_pref_trusted_nfc_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    const-string v4, "Coffee - NfcTrustletController"

    const-string v5, "corrupt UnlockTag, removing"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 181
    :cond_1
    :try_start_1
    const-string v1, "Coffee - NfcTrustletController"

    const-string v4, "null string stored as UnlockTag, removing"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 191
    :cond_2
    return-object v2
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "auth_trust_agent_pref_trusted_nfc_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_0

    .line 70
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :cond_0
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    const-string v2, "Coffee - NfcTrustletController"

    const-string v3, "failed to parse UnlockTag..."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 84
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    const-string v3, "nfc_trustlet_tech_codes"

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->d()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a(Ljava/util/Set;[Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/google/android/gms/auth/trustagent/trustlet/y; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 93
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->e()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    if-eqz v2, :cond_0

    .line 96
    const-string v2, "nfc_trustlet_tech_codes"

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_0
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .line 101
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v1

    .line 100
    const-string v2, "Coffee - NfcTrustletController"

    const-string v3, "failed to create JSON from tag object"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public final a()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    const-string v2, "nfc_trustlet_tech_codes"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 161
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    if-nez v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 153
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 137
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    .line 140
    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 142
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->d()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a(Ljava/util/Set;[Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/google/android/gms/auth/trustagent/trustlet/y; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v4

    const-string v4, "Coffee - NfcTrustletController"

    const-string v5, "something very wrong with an UnlockTag, removing"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 151
    :cond_2
    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    const-string v0, "nfc_trustlet_tech_codes"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    goto :goto_0
.end method

.method public final b()[Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 2

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;

    return-object v0
.end method

.method final c(Ljava/lang/String;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 196
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/trustlet/x;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/x;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-object v0

    .line 203
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/auth/trustagent/trustlet/UnlockTag;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    const-string v2, "Coffee - NfcTrustletController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error parsing tag: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
