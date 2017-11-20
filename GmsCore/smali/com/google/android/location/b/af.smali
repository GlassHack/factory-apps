.class public final Lcom/google/android/location/b/af;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/Class;

.field private final d:Landroid/content/Intent;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/android/location/b/aj;

.field private g:Z

.field private h:Ljava/util/ArrayList;

.field private i:Ljava/lang/String;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    new-instance v0, Lcom/google/android/location/b/ai;

    invoke-direct {v0, v1}, Lcom/google/android/location/b/ai;-><init>(B)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;B)V
    .locals 2

    .prologue
    .line 213
    new-instance v0, Lcom/google/android/location/b/ai;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/location/b/ai;-><init>(B)V

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V

    .line 214
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;)V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/location/b/af;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/google/android/location/b/aj;I)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    .line 107
    iput-boolean v3, p0, Lcom/google/android/location/b/af;->g:Z

    .line 113
    iput-object v1, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    .line 148
    if-gez p4, :cond_0

    .line 149
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cache type must be a >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    iput-object p1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    .line 152
    iput-object p2, p0, Lcom/google/android/location/b/af;->c:Ljava/lang/Class;

    .line 153
    iput-object v1, p0, Lcom/google/android/location/b/af;->d:Landroid/content/Intent;

    .line 154
    iput-object p3, p0, Lcom/google/android/location/b/af;->f:Lcom/google/android/location/b/aj;

    .line 155
    iput p4, p0, Lcom/google/android/location/b/af;->j:I

    .line 156
    invoke-direct {p0}, Lcom/google/android/location/b/af;->e()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/b/af;->d:Landroid/content/Intent;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/location/b/af;->j:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0x6cebb800

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_1
    :goto_1
    return-void

    .line 156
    :cond_2
    iget-object v1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/location/b/af;->j:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/google/android/location/j/a;->e:Z

    if-eqz v1, :cond_1

    const-string v1, "SystemMemoryCache"

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    if-eqz p0, :cond_0

    .line 221
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    const-string v2, "com.google.android.location.cache.is_cache"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 224
    :cond_0
    return v0
.end method

.method public static b(Landroid/content/Intent;)I
    .locals 2

    .prologue
    .line 232
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_0

    const-string v1, "com.google.android.location.cache.cache_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 234
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 235
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "SystemMemoryCache"

    const-string v1, "No cache type found"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_1
    const/4 v0, -0x1

    .line 238
    :goto_0
    return v0

    :cond_2
    const-string v1, "com.google.android.location.cache.cache_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private d()V
    .locals 4

    .prologue
    const/high16 v3, 0x8000000

    .line 404
    invoke-direct {p0}, Lcom/google/android/location/b/af;->e()Landroid/content/Intent;

    move-result-object v0

    .line 405
    const-string v1, "com.google.android.location.cache.cache_data"

    iget-object v2, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 406
    const-string v1, "com.google.android.location.cache.cache_id"

    iget-object v2, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    iget-object v1, p0, Lcom/google/android/location/b/af;->d:Landroid/content/Intent;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/location/b/af;->j:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 411
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    iget v2, p0, Lcom/google/android/location/b/af;->j:I

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    goto :goto_0
.end method

.method private e()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/google/android/location/b/af;->d:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/location/b/af;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/location/b/af;->c:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    :goto_0
    const-string v1, "com.google.android.location.cache.is_cache"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 446
    const-string v1, "com.google.android.location.cache.cache_type"

    iget v2, p0, Lcom/google/android/location/b/af;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    return-object v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->d:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 306
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/b/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/af;->c(Landroid/os/Parcelable;)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/location/b/af;->d()V

    .line 313
    :goto_0
    monitor-exit v1

    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    new-instance v2, Lcom/google/android/location/b/ag;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/location/b/ag;-><init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 4

    .prologue
    .line 341
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/b/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/af;->b(Ljava/util/Collection;)V

    .line 344
    invoke-direct {p0}, Lcom/google/android/location/b/af;->d()V

    .line 348
    :goto_0
    monitor-exit v1

    return-void

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    new-instance v2, Lcom/google/android/location/b/al;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/location/b/al;-><init>(Lcom/google/android/location/b/af;Ljava/util/Collection;B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a()Z
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/location/b/af;->g:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 321
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/b/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/af;->d(Landroid/os/Parcelable;)V

    .line 324
    invoke-direct {p0}, Lcom/google/android/location/b/af;->d()V

    .line 328
    :goto_0
    monitor-exit v1

    return-void

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    new-instance v2, Lcom/google/android/location/b/ak;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/google/android/location/b/ak;-><init>(Lcom/google/android/location/b/af;Landroid/os/Parcelable;B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final b(Ljava/util/Collection;)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 353
    iget-object v0, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 354
    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3

    .prologue
    .line 388
    iget-object v1, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    monitor-exit v1

    .line 392
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 248
    iget-object v2, p0, Lcom/google/android/location/b/af;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/location/b/af;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_0

    const-string v0, "SystemMemoryCache"

    const-string v1, "Cache initialize called when already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    monitor-exit v2

    .line 279
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-static {p1}, Lcom/google/android/location/b/af;->a(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 254
    sget-boolean v0, Lcom/google/android/location/j/a;->d:Z

    if-eqz v0, :cond_2

    const-string v0, "SystemMemoryCache"

    const-string v1, "Cache initialize called with wrong intent."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 257
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "com.google.android.location.cache.cache_data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    .line 258
    iget-object v1, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    .line 259
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_4

    const-string v1, "SystemMemoryCache"

    const-string v3, "No existing cache data found. Initializing."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    .line 262
    :cond_5
    iget-object v1, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    move v1, v0

    .line 264
    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.google.android.location.cache.cache_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    .line 265
    iget-object v3, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 266
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    .line 267
    sget-boolean v1, Lcom/google/android/location/j/a;->c:Z

    if-eqz v1, :cond_6

    const-string v1, "SystemMemoryCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Created new cached id:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/location/b/af;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move v1, v0

    .line 271
    :cond_7
    iget-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/b/ah;

    .line 272
    invoke-virtual {v0}, Lcom/google/android/location/b/ah;->a()V

    goto :goto_2

    .line 262
    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    .line 274
    :cond_9
    iget-object v0, p0, Lcom/google/android/location/b/af;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 275
    if-eqz v1, :cond_a

    .line 276
    invoke-direct {p0}, Lcom/google/android/location/b/af;->d()V

    .line 278
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/b/af;->g:Z

    .line 279
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method final c(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0, p1}, Lcom/google/android/location/b/af;->d(Landroid/os/Parcelable;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method final d(Landroid/os/Parcelable;)V
    .locals 3

    .prologue
    .line 375
    iget-object v0, p0, Lcom/google/android/location/b/af;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 376
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 377
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 378
    iget-object v2, p0, Lcom/google/android/location/b/af;->f:Lcom/google/android/location/b/aj;

    invoke-interface {v2, v0, p1}, Lcom/google/android/location/b/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 382
    :cond_1
    return-void
.end method
