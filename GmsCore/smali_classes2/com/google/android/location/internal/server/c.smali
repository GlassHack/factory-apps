.class final Lcom/google/android/location/internal/server/c;
.super Lcom/google/android/location/internal/server/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/internal/server/b;

.field private k:Z


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/b;Landroid/app/PendingIntent;ILcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/j;ZLjava/lang/String;)V
    .locals 8

    .prologue
    .line 321
    iput-object p1, p0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/server/b;

    .line 322
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/internal/server/g;-><init>(Landroid/app/PendingIntent;IILcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/j;ZLjava/lang/String;)V

    .line 323
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.wearable.app"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/location/internal/server/c;->k:Z

    .line 326
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/google/android/location/internal/server/c;->k:Z

    return v0
.end method

.method final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 334
    iget-object v0, p0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/server/b;

    iget-object v0, v0, Lcom/google/android/location/internal/server/b;->i:Lcom/google/android/location/p/a;

    iget-object v1, p0, Lcom/google/android/location/internal/server/c;->b:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/location/p/a;->a(Ljava/lang/String;)I

    move-result v7

    .line 336
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 340
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/DetectedActivity;

    .line 343
    iget-object v2, p0, Lcom/google/android/location/internal/server/c;->b:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v8

    const v9, 0x432380

    if-ge v7, v9, :cond_1

    const/4 v9, 0x6

    if-le v8, v9, :cond_2

    move v2, v3

    :goto_1
    if-eqz v2, :cond_0

    .line 345
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_1
    const v9, 0x4dd1e0

    if-ge v7, v9, :cond_2

    const/16 v9, 0x8

    if-le v8, v9, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    iget-boolean v9, p0, Lcom/google/android/location/internal/server/c;->i:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/server/b;

    iget-object v9, v9, Lcom/google/android/location/internal/server/b;->j:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    invoke-static {p1}, Lcom/google/android/location/os/real/aw;->a(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_5

    const-string v8, "com.google.android.wearable.app"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_1

    :cond_5
    move v2, v6

    goto :goto_1

    .line 348
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 349
    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->c()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/google/android/gms/location/ActivityRecognitionResult;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Ljava/util/List;JJ)V

    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    .line 364
    const v0, 0x7fffffff

    if-lt v7, v0, :cond_a

    .line 375
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_7

    const-string v0, "ActivityRecognitionListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ActivityIntentReceiver.deliverIntent: Send byte array to new client. clientVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_7
    const-string v0, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 382
    invoke-virtual {v0, v2, v6}, Lcom/google/android/gms/location/ActivityRecognitionResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 384
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "com.google.android.location.internal.EXTRA_ACTIVITY_RESULT"

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v0

    .line 386
    :goto_2
    invoke-super {p0, p1, v0}, Lcom/google/android/location/internal/server/g;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    .line 388
    :goto_3
    return v0

    :cond_8
    move v0, v6

    .line 356
    goto :goto_3

    :cond_9
    move v0, v6

    .line 388
    goto :goto_3

    :cond_a
    move-object v0, v1

    goto :goto_2
.end method

.method final b()V
    .locals 6

    .prologue
    .line 438
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/android/location/internal/server/c;->b:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/location/internal/server/c;->a:Lcom/google/android/location/internal/server/b;

    iget-object v0, v4, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/server/d;

    if-nez v0, :cond_0

    iget-object v0, v4, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v5, 0x28

    if-le v0, v5, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/android/location/internal/server/d;->a:Lcom/google/android/location/internal/server/o;

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/android/location/internal/server/o;->a(Lcom/google/android/location/internal/server/g;J)V

    .line 439
    :cond_1
    return-void

    .line 438
    :cond_2
    new-instance v0, Lcom/google/android/location/internal/server/d;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, Lcom/google/android/location/internal/server/d;-><init>(Lcom/google/android/location/internal/server/b;B)V

    iget-object v4, v4, Lcom/google/android/location/internal/server/b;->c:Ljava/util/Map;

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
