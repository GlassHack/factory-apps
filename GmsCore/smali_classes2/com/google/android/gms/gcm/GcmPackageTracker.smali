.class public final Lcom/google/android/gms/gcm/GcmPackageTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/common/a/b;

.field private static b:Lcom/google/android/gms/gcm/GcmPackageTracker;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/gcm/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "gcm_track_packages"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/a/b;->a(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/common/a/b;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->c:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/gcm/at;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/at;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/gcm/at;->b:Lcom/google/android/gms/gcm/aw;

    iput-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->d:Lcom/google/android/gms/gcm/aw;

    .line 63
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/gms/gcm/GcmPackageTracker;
    .locals 2

    .prologue
    .line 69
    const-class v1, Lcom/google/android/gms/gcm/GcmPackageTracker;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->b:Lcom/google/android/gms/gcm/GcmPackageTracker;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/google/android/gms/gcm/GcmPackageTracker;

    invoke-direct {v0, p0}, Lcom/google/android/gms/gcm/GcmPackageTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->b:Lcom/google/android/gms/gcm/GcmPackageTracker;

    .line 72
    :cond_0
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->b:Lcom/google/android/gms/gcm/GcmPackageTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Intent;I)Ljava/util/List;
    .locals 2

    .prologue
    .line 177
    if-nez p2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 182
    :goto_0
    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 182
    invoke-static {p1, p2}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private a()V
    .locals 12

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->d:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0}, Lcom/google/android/gms/gcm/aw;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/ab;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 121
    const-string v0, "GPT.populated"

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string v0, "GCM-PT"

    const-string v4, "Populating db of packages that use GCM"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/content/Intent;

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmPackageTracker;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v4, v7}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "GCM-PT"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "GCM-PT"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " user="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0, v0, v7}, Lcom/google/android/gms/gcm/GcmPackageTracker;->e(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GCM-PT"

    const-string v4, "Unable to add package to the database"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 125
    const-string v1, "GPT.populated"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 122
    :cond_4
    invoke-interface {v5}, Ljava/util/Set;->clear()V

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/google/android/gms/gcm/GcmPackageTracker;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Ljava/util/List;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/gcm/f;->a(Landroid/content/Context;)V

    .line 156
    invoke-static {}, Lcom/google/android/gms/gcm/f;->a()Ljava/util/List;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 165
    :cond_1
    return-object v0

    .line 161
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 163
    invoke-static {v2}, Lcom/google/android/gms/gcm/f;->b(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private d(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->d:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/gcm/aw;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private e(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmPackageTracker;->d(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->d:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v1, p1, v2, p2, v2}, Lcom/google/android/gms/gcm/aw;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 201
    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 82
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a()V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmPackageTracker;->d(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 90
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "GCM-PT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const-string v0, "GCM-PT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a()V

    .line 97
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/gcm/GcmPackageTracker;->e(Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;I)Z
    .locals 3

    .prologue
    .line 104
    sget-object v0, Lcom/google/android/gms/gcm/GcmPackageTracker;->a:Lcom/google/android/gms/common/a/b;

    invoke-static {v0}, Lcom/google/android/gms/common/b/a;->c(Lcom/google/android/gms/common/a/b;)I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 111
    :goto_0
    return v0

    .line 107
    :cond_0
    const-string v0, "GCM-PT"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    const-string v0, "GCM-PT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Removing package "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/gcm/GcmPackageTracker;->a()V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/gcm/GcmPackageTracker;->d:Lcom/google/android/gms/gcm/aw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/gcm/aw;->b(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
