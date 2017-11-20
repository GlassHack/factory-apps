.class public Lcom/google/android/gms/auth/trustagent/trustlet/ab;
.super Lcom/google/android/gms/auth/trustagent/trustlet/af;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/trustagent/trustlet/n;
.implements Lcom/google/android/gms/auth/trustagent/trustlet/s;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

.field private g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

.field private h:Z

.field private i:Z

.field private j:Ljava/util/Set;

.field private k:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/ab;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 25
    new-instance v0, Lcom/google/android/gms/auth/d/f;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/d/f;-><init>(Landroid/content/Context;)V

    iput v2, v0, Lcom/google/android/gms/auth/d/f;->d:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->h:I

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iput v1, v0, Lcom/google/android/gms/auth/d/f;->i:I

    invoke-virtual {v0}, Lcom/google/android/gms/auth/d/f;->a()V

    return-void

    :cond_0
    iput v2, v0, Lcom/google/android/gms/auth/d/f;->h:I

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 255
    const-string v0, ""

    .line 256
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 258
    goto :goto_0

    .line 259
    :cond_0
    const-string v0, "Coffee - PlaceTrustlet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Entered Trusted Places Id List: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "Coffee - PlaceTrustlet"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Nearby alert: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)Lcom/google/android/gms/auth/trustagent/trustlet/p;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    return-object v0
.end method

.method static synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    const-string v0, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iput-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    .line 170
    iput-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    .line 171
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->e:Lcom/google/android/gms/auth/trustagent/trustlet/t;

    iget-object v3, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->d:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/q;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/q;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->g:Lcom/google/android/gms/common/api/l;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->g:Lcom/google/android/gms/common/api/l;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)V

    new-instance v1, Lcom/google/android/gms/auth/trustagent/trustlet/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/r;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/p;)V

    iput-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->h:Lcom/google/android/gms/common/api/m;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->h:Lcom/google/android/gms/common/api/m;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/m;)V

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 173
    return-void
.end method

.method private g()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 176
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 177
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    sget-object v1, Lcom/google/android/gms/location/places/s;->c:Lcom/google/android/gms/location/places/w;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/location/places/w;->a(Lcom/google/android/gms/common/api/j;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/y;

    const-string v1, "Coffee - NearbyAlertTracker"

    const-string v2, "removeNearbyAlerts()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/j;->b()V

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->g:Lcom/google/android/gms/common/api/l;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/l;)V

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->c:Lcom/google/android/gms/common/api/j;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->h:Lcom/google/android/gms/common/api/m;

    invoke-interface {v1, v2}, Lcom/google/android/gms/common/api/j;->b(Lcom/google/android/gms/common/api/m;)V

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;->e:Lcom/google/android/gms/auth/trustagent/trustlet/t;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 179
    iput-boolean v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    .line 180
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    if-eqz v0, :cond_0

    .line 181
    iput-boolean v4, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->e(Ljava/lang/String;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iput-boolean v4, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    .line 185
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "stopPlaceTrustlet(), revokeTrust(null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-nez v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    if-eqz v0, :cond_0

    .line 220
    iput-boolean v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    .line 221
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "!isEnabled(), mCurrentlyTrusted, revokeTrust(null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->e(Ljava/lang/String;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    .line 233
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "mCurrentlyTrusted && !mEnteredTrustedPlacesIdList.isEmpty(), enableTrust!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iput-boolean v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i:Z

    .line 243
    invoke-virtual {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->e(Ljava/lang/String;)V

    .line 244
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "mCurrentlyTrusted && mEnteredTrustedPlacesIdList.isEmpty(), revokeTrust(null)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 142
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "auth_trust_agent_pref_trusted_place_enabled_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Coffee - PlaceTrustlet"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Initial addPlaceToTrustedPlaces: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    new-array v2, v5, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;->a([Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 157
    const-string v0, "Enter"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i()V

    .line 159
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 148
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->f()V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->f:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g()V

    goto :goto_0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->a:Landroid/content/SharedPreferences;

    .line 59
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/p;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/p;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/s;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g:Lcom/google/android/gms/auth/trustagent/trustlet/p;

    .line 60
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/m;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/n;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a:Landroid/content/Context;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->d:Lcom/google/android/gms/auth/trustagent/trustlet/o;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->c:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ac;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/ab;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 101
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c(Z)V

    .line 102
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    const-string v0, "Exit"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i()V

    .line 166
    return-void
.end method

.method protected final b(Z)V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->f()V

    .line 123
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "onEnabledStateChanged, start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g()V

    .line 126
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "onEnabledStateChanged, stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 132
    invoke-super {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->c()V

    .line 133
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->h:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->g()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->c:Lcom/google/android/gms/auth/trustagent/trustlet/m;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->e:Z

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->a:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/m;->d:Lcom/google/android/gms/auth/trustagent/trustlet/o;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    const-string v0, "Coffee - PlaceTrustlet"

    const-string v1, "onDestroy(), stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->j:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 214
    invoke-direct {p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ab;->i()V

    .line 215
    return-void
.end method

.method protected final d()Lcom/google/android/gms/common/a/b;
    .locals 1

    .prologue
    .line 282
    sget-object v0, Lcom/google/android/gms/auth/b/a;->K:Lcom/google/android/gms/common/a/b;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x2

    return v0
.end method
