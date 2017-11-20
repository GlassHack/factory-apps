.class public final Lcom/google/android/gms/auth/trustagent/trustlet/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/google/android/gms/auth/trustagent/trustlet/ag;


# instance fields
.field a:Lcom/google/android/gms/auth/trustagent/trustlet/l;

.field final b:Landroid/content/BroadcastReceiver;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/List;

.field private e:Z

.field private f:Lcom/google/android/gms/auth/trustagent/trustlet/j;

.field private g:Z

.field private h:Z

.field private final i:Ljava/util/Map;

.field private final j:Landroid/content/SharedPreferences;

.field private k:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d:Ljava/util/List;

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/auth/trustagent/ap;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->j:Landroid/content/SharedPreferences;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->k:Ljava/util/Map;

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 89
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    .line 91
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/ai;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/ai;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a:Lcom/google/android/gms/auth/trustagent/trustlet/l;

    .line 108
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/j;

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a:Lcom/google/android/gms/auth/trustagent/trustlet/l;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/l;)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->f:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->f:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->a()V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->c:Z

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    if-eqz v2, :cond_0

    const-string v2, "Coffee - TrustStateTracker"

    const-string v3, "onTrustletManagerCreated called when there already is an existing Trustletmanager."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p0, v0, Lcom/google/android/gms/auth/trustagent/ar;->b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V

    iget-boolean v2, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/trustagent/ar;->b(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    new-instance v0, Lcom/google/android/gms/auth/trustagent/trustlet/aj;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/aj;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/ah;B)V

    iput-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b:Landroid/content/BroadcastReceiver;

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lcom/google/android/gms/auth/trustagent/trustlet/af;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    .line 203
    iget-boolean v2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->c:Z

    if-ne v2, p2, :cond_0

    .line 204
    const-string v0, "Coffee - TrustletManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trustlet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempted to change its trust state to the  current state (ignored)."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-boolean p2, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->c:Z

    .line 209
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->k:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p4, :cond_1

    :goto_1
    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    :goto_2
    invoke-direct {p0, p3}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    const-string p4, ""

    goto :goto_1

    .line 212
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->k:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->g:Z

    if-eqz v0, :cond_1

    .line 158
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    if-eqz v0, :cond_0

    .line 159
    iput-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    .line 160
    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(ZLjava/lang/String;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    .line 166
    iget-boolean v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->c:Z

    if-eqz v0, :cond_2

    .line 168
    const/4 v0, 0x1

    .line 172
    :goto_1
    iget-boolean v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    if-eq v0, v1, :cond_0

    .line 173
    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    .line 174
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(ZLjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/ak;

    .line 180
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/auth/trustagent/trustlet/ak;->a(ZLjava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_0
    return-void
.end method

.method private a(ZZ)V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 293
    .line 295
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    move v1, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    .line 296
    if-nez v1, :cond_6

    iget-boolean v4, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    if-eqz v4, :cond_6

    move v4, v5

    .line 300
    :goto_1
    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d()Lcom/google/android/gms/common/a/b;

    move-result-object v1

    .line 301
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Lcom/google/android/gms/common/a/b;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    .line 303
    iget-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    instance-of v1, v1, Lcom/google/android/gms/auth/trustagent/trustlet/z;

    if-eqz v1, :cond_0

    .line 307
    iput-boolean v3, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    .line 308
    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    check-cast v1, Lcom/google/android/gms/auth/trustagent/trustlet/z;

    invoke-virtual {v1}, Lcom/google/android/gms/auth/trustagent/trustlet/z;->f()V

    .line 310
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    iget-boolean v7, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    invoke-virtual {v1, v7}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d(Z)V

    .line 312
    :cond_1
    if-nez v2, :cond_5

    iget-boolean v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    if-eqz v0, :cond_5

    move v0, v5

    :goto_2
    move v2, v0

    move v1, v4

    .line 315
    goto :goto_0

    .line 316
    :cond_2
    if-nez p1, :cond_3

    if-eq v1, v2, :cond_4

    .line 317
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/ak;

    invoke-interface {v0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ak;->a(Z)V

    goto :goto_3

    .line 319
    :cond_4
    return-void

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    move v4, v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/auth/trustagent/trustlet/ah;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/auth/trustagent/trustlet/ah;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(ZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/af;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->a(Landroid/content/Context;Lcom/google/android/gms/auth/trustagent/trustlet/ag;)V

    .line 143
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;ZLjava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Lcom/google/android/gms/auth/trustagent/trustlet/af;ZLjava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/af;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 219
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez p2, :cond_0

    .line 221
    const-string v1, "Coffee - TrustletManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trustlet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not supported."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "Coffee - TrustletManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Trustlet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " already registered, ignored."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->j:Landroid/content/SharedPreferences;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "auth_trust_agent_pref_trustlet_enabled_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    new-instance v2, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/al;-><init>(Lcom/google/android/gms/auth/trustagent/trustlet/af;Z)V

    .line 230
    iget-object v3, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p1, v4}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d(Z)V

    .line 234
    :cond_2
    const-string v2, "Coffee - TrustletManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trustlet registered "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " enabled: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(ZZ)V

    .line 332
    return-void

    :cond_0
    move v0, v1

    .line 331
    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    return v0
.end method

.method public final b(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 126
    const-string v0, "refreshing trust"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Ljava/lang/String;)V

    .line 127
    iget-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->e:Z

    return v0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->f:Lcom/google/android/gms/auth/trustagent/trustlet/j;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/j;->b()V

    .line 147
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->j:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 149
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    .line 150
    iget-object v0, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->h()V

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/trustagent/ar;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/trustagent/ar;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/ar;->a:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->c:Z

    iget-object v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->b(Lcom/google/android/gms/auth/trustagent/trustlet/ak;)V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/auth/trustagent/ar;->b:Lcom/google/android/gms/auth/trustagent/trustlet/ah;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/auth/trustagent/ar;->b(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->h:Z

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()Ljava/util/Map;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(ZZ)V

    return-void
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 272
    const-string v0, "auth_trust_agent_pref_trustlet_enabled_"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, v2

    .line 273
    :goto_0
    if-nez v1, :cond_1

    .line 288
    :goto_1
    return-void

    .line 272
    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->i:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;

    .line 276
    if-nez v0, :cond_2

    .line 277
    const-string v0, "Coffee - TrustletManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference change for unknown trustlet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 280
    :cond_2
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    .line 281
    iget-object v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->a:Lcom/google/android/gms/auth/trustagent/trustlet/af;

    iget-boolean v3, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    invoke-virtual {v1, v3}, Lcom/google/android/gms/auth/trustagent/trustlet/af;->d(Z)V

    .line 282
    iget-boolean v1, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->b:Z

    if-nez v1, :cond_3

    .line 285
    iput-boolean v4, v0, Lcom/google/android/gms/auth/trustagent/trustlet/al;->c:Z

    .line 287
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/trustagent/trustlet/ah;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
