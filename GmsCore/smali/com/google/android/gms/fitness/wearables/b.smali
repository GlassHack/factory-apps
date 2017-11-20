.class public final Lcom/google/android/gms/fitness/wearables/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/p;


# instance fields
.field private final a:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    .line 35
    return-void
.end method

.method private static a(Lcom/google/android/gms/fitness/n/ar;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 121
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;

    .line 124
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 14

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WearableSyncHostService.onMessageReceived: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    const/16 v1, 0x303c

    const-string v2, "Fit Wearable sync in progress"

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 41
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/WearablesSync/DataPoint/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 45
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    new-instance v4, Lcom/google/n/a/a/a/a/n;

    invoke-direct {v4}, Lcom/google/n/a/a/a/a/n;-><init>()V

    array-length v5, v0

    invoke-static {v4, v0, v5}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/n;

    .line 51
    iget-object v4, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    invoke-static {v4, v1}, Lcom/google/android/gms/fitness/j/a;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/j/a;->a()Lcom/google/android/gms/fitness/n/ar;

    move-result-object v4

    .line 54
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/google/n/a/a/a/a/n;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v1, v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 57
    iget-object v7, v0, Lcom/google/n/a/a/a/a/n;->a:[Lcom/google/n/a/a/a/a/m;

    array-length v8, v7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_5

    aget-object v9, v7, v1

    .line 58
    iget-object v0, v9, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 59
    if-nez v0, :cond_0

    .line 60
    iget-object v10, v9, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-interface {v4, v10}, Lcom/google/android/gms/fitness/n/ar;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v10

    .line 61
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 63
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 64
    iget-object v10, v9, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 72
    iget-object v10, v9, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    const/4 v11, 0x0

    invoke-static {v10, v0, v11}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/n/a/a/a/a/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v0

    .line 74
    iget-object v10, v9, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    if-eqz v10, :cond_4

    iget-object v9, v9, Lcom/google/n/a/a/a/a/m;->a:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 75
    invoke-static {v4, v6}, Lcom/google/android/gms/fitness/wearables/b;->a(Lcom/google/android/gms/fitness/n/ar;Ljava/util/List;)V

    .line 76
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 78
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/android/gms/fitness/data/DataPoint;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x1

    invoke-interface {v4, v0, v9}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Z)I

    .line 57
    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_2
    const-string v10, "WearableSyncHostService unable to find dataSource: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v9, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "WearableSyncHostService unable to sync: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WearableSyncHostService elapsedNanos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 110
    iget-object v2, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    const/16 v3, 0x303c

    const-string v4, "Fit Wearable sync complete"

    invoke-static {v2, v3, v4, v0, v1}, Lcom/google/android/gms/fitness/service/e;->a(Landroid/content/Context;ILjava/lang/String;J)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    const-string v1, "com.google.android.gms.fitness.wearables.SYNC_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "TimestampMillis"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 116
    iget-object v1, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    return-void

    .line 81
    :cond_4
    :try_start_1
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 86
    :cond_5
    invoke-static {v4, v6}, Lcom/google/android/gms/fitness/wearables/b;->a(Lcom/google/android/gms/fitness/n/ar;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 91
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/WearablesSync/DataSource/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    :try_start_2
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/google/android/gms/fitness/wearables/b;->a:Landroid/app/Application;

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/j/a;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/google/android/gms/fitness/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/j/a;->a()Lcom/google/android/gms/fitness/n/ar;

    move-result-object v1

    .line 99
    invoke-interface {p1}, Lcom/google/android/gms/wearable/r;->b()[B

    move-result-object v0

    sget-object v4, Lcom/google/android/gms/fitness/data/DataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/d;->a([BLandroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 101
    invoke-interface {v1, v0}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSource;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 102
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "WearableSyncHostService unable to sync: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3
.end method
