.class public final Lcom/google/android/gms/fitness/f/q;
.super Lcom/google/android/gms/fitness/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/f/a;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/q;->c()V

    .line 45
    return-void
.end method

.method static a(Lcom/google/android/gms/wearable/m;Landroid/content/SharedPreferences;)V
    .locals 10

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 125
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/m;->i(Ljava/lang/String;)Lcom/google/android/gms/wearable/m;

    move-result-object v4

    .line 129
    iget-object v1, v4, Lcom/google/android/gms/wearable/m;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {v4, v1}, Lcom/google/android/gms/wearable/m;->j(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 132
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "WearableAccountManager.add account: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " package: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, " scopes: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v1, v8}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 133
    if-eqz v7, :cond_1

    .line 134
    const-string v1, "\n"

    invoke-static {v1, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 139
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 140
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 206
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    if-eqz v1, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    .line 208
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to get packageinfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 143
    const-string v0, "WearableAccountManager.loadInitialAccounts"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 145
    new-instance v0, Lcom/google/android/gms/common/api/k;

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/google/android/gms/wearable/y;->f:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/k;->a(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/k;->a()Lcom/google/android/gms/common/api/j;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/google/android/gms/fitness/f/r;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/fitness/f/r;-><init>(Lcom/google/android/gms/fitness/f/q;Lcom/google/android/gms/common/api/j;)V

    .line 157
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/l;)V

    .line 158
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/j;->a(Lcom/google/android/gms/common/api/m;)V

    .line 159
    invoke-interface {v0}, Lcom/google/android/gms/common/api/j;->a()V

    .line 160
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 2

    .prologue
    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableAccountManager.onPeerConnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 191
    invoke-direct {p0}, Lcom/google/android/gms/fitness/f/q;->c()V

    .line 192
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/q;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "has_none"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/f/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-string v0, "<<default account>>"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {p0, p2}, Lcom/google/android/gms/fitness/f/q;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const/4 v0, 0x0

    .line 84
    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/q;->a:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/google/android/gms/fitness/f/q;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const-string v0, "none"

    .line 87
    :cond_0
    return-object v0

    .line 81
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p1

    goto :goto_0
.end method

.method public final b()Ljava/util/Set;
    .locals 4

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/android/gms/fitness/f/a;->b()Ljava/util/Set;

    move-result-object v0

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/f/q;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "has_none"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const-string v1, "none"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    return-object v0
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/fitness/f/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/gms/fitness/f/d;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/google/android/gms/fitness/f/t;

    iget-object v1, p0, Lcom/google/android/gms/fitness/f/q;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p0}, Lcom/google/android/gms/fitness/f/t;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/fitness/f/a;)V

    return-object v0
.end method
