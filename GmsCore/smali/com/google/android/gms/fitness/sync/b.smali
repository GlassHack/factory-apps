.class public final Lcom/google/android/gms/fitness/sync/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field private final e:Lcom/google/android/gms/fitness/data/Device;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Device;->a(Landroid/content/Context;)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/sync/b;->e:Lcom/google/android/gms/fitness/data/Device;

    .line 48
    return-void
.end method

.method private a(JLcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;)V
    .locals 11

    .prologue
    .line 137
    :goto_0
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->m:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0, p1, p2}, Lcom/google/android/gms/fitness/n/ar;->a(IJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 138
    const-string v1, "uploading %s changes"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/c;

    iget-wide v6, v0, Lcom/google/android/gms/fitness/n/c;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, v0, Lcom/google/android/gms/fitness/n/c;->d:[B

    new-instance v6, Lcom/google/n/a/a/a/a/m;

    invoke-direct {v6}, Lcom/google/n/a/a/a/a/m;-><init>()V

    array-length v7, v1

    invoke-static {v6, v1, v7}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v1

    check-cast v1, Lcom/google/n/a/a/a/a/m;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v6, v1, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    iget-wide v8, v0, Lcom/google/android/gms/fitness/n/c;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lcom/google/n/a/a/a/a/c;->f:Ljava/lang/Long;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "unable to parse: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p4, v2}, Lcom/google/android/gms/fitness/sync/d;->a(Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/sync/b;->c:I
    :try_end_1
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_1 .. :try_end_1} :catch_2

    :cond_1
    if-nez v1, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_2
    :try_start_2
    invoke-interface {p3, v0}, Lcom/google/android/gms/fitness/n/ar;->c(Ljava/util/Collection;)I
    :try_end_2
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    invoke-interface {p3, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/Set;)V
    :try_end_3
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to update retry count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const-string v2, "unable to applyChange"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v2, v5}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sync/g;->a()Z

    move-result v2

    if-nez v2, :cond_1

    throw v0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/m;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/n/c;

    if-nez v1, :cond_3

    const-string v1, "Received failure %s not in changes %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v1, v6}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4

    :cond_3
    iget-wide v0, v1, Lcom/google/android/gms/fitness/n/c;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-object v1, v2

    goto :goto_2

    :catch_3
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unable to clear changeLogs: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_3

    .line 140
    :cond_5
    return-void
.end method

.method private a(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;Lcom/google/android/gms/fitness/data/Device;)V
    .locals 10

    .prologue
    .line 58
    const-string v0, "download data source: %s pageToken: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 59
    sget-object v0, Lcom/google/android/gms/fitness/i/a;->j:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    const-string v0, "down sync disabled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object p4, v8

    .line 67
    :cond_2
    :try_start_0
    invoke-interface {p2, p3, p4}, Lcom/google/android/gms/fitness/sync/d;->a(Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;)Lcom/google/android/gms/fitness/e/a;
    :try_end_0
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 77
    iget v0, p0, Lcom/google/android/gms/fitness/sync/b;->d:I

    iget-object v1, v9, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/fitness/sync/b;->d:I

    .line 78
    iget v0, p0, Lcom/google/android/gms/fitness/sync/b;->d:I

    iget-object v1, v9, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/fitness/sync/b;->d:I

    .line 81
    iget-object v1, v9, Lcom/google/android/gms/fitness/e/a;->b:Ljava/util/List;

    .line 82
    const-string v0, "deletion count: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v1, v0}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;Z)I

    move-result v0

    .line 86
    const-string v2, "deleted %s out of %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :goto_1
    iget-object v1, v9, Lcom/google/android/gms/fitness/e/a;->a:Ljava/util/List;

    .line 93
    const-string v0, "insertions count: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 95
    :try_start_2
    invoke-interface {p1, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 97
    const-string v2, "dataPoint already exists locally: %s out of %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 106
    :cond_3
    :goto_2
    const-wide/16 v6, -0x1

    .line 107
    invoke-static {p3, p5}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/Device;)Z

    move-result v3

    .line 108
    if-nez p4, :cond_4

    if-eqz v3, :cond_4

    .line 109
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/Collection;)J

    move-result-wide v6

    .line 112
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 113
    iget-object v8, v9, Lcom/google/android/gms/fitness/e/a;->c:Ljava/lang/String;

    .line 114
    new-instance v1, Lcom/google/android/gms/fitness/d/f;

    move-object v2, p3

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/fitness/d/f;-><init>(Lcom/google/android/gms/fitness/data/DataSource;ZJJLjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/d/f;)V

    .line 116
    invoke-virtual {v9}, Lcom/google/android/gms/fitness/e/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v1, "unable to list: %s pageToken: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/sync/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    throw v0

    .line 87
    :catch_1
    move-exception v0

    const-string v2, "could not delete batch: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto/16 :goto_1

    .line 100
    :catch_2
    move-exception v0

    const-string v2, "unable to insert batch: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_2
.end method

.method static a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/Device;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {p0}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Lcom/google/android/gms/fitness/data/Device;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/m/a;)V
    .locals 24

    .prologue
    .line 220
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    new-instance v13, Lcom/google/android/gms/fitness/sync/a;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/fitness/sync/b;->e:Lcom/google/android/gms/fitness/data/Device;

    invoke-direct {v13, v4}, Lcom/google/android/gms/fitness/sync/a;-><init>(Lcom/google/android/gms/fitness/data/Device;)V

    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/fitness/n/ar;->d_()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/f;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v12, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v8, :cond_2

    iget-wide v8, v8, Lcom/google/android/gms/fitness/d/f;->c:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    :cond_2
    invoke-static {v4}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v4

    .line 222
    new-instance v5, Lcom/google/android/gms/fitness/sync/g;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Lcom/google/android/gms/fitness/sync/g;-><init>(ZLjava/lang/Throwable;)V

    throw v5

    .line 220
    :cond_3
    :try_start_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    iput v4, v13, Lcom/google/android/gms/fitness/sync/a;->b:I

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Lcom/google/android/gms/fitness/sync/d;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/data/DataSource;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unable to sync: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/google/android/gms/fitness/o/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/d/f;

    if-eqz v4, :cond_5

    iget-wide v6, v4, Lcom/google/android/gms/fitness/d/f;->c:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    iget-object v4, v13, Lcom/google/android/gms/fitness/sync/a;->a:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {v5, v4}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/Device;)Z

    move-result v20

    const-wide/16 v10, -0x1

    if-nez v20, :cond_10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Lcom/google/android/gms/fitness/i/a;->q:Lcom/google/android/gms/common/a/b;

    invoke-virtual {v4}, Lcom/google/android/gms/common/a/b;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long v6, v18, v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    move-object/from16 v4, p1

    invoke-interface/range {v4 .. v9}, Lcom/google/android/gms/fitness/sync/d;->a(Lcom/google/android/gms/fitness/data/DataSource;JJ)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_10

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/android/gms/fitness/n/ar;->a(Ljava/util/List;)Ljava/util/Set;

    const-string v10, "Fitness"

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "backfilling %1$s: %2$tF %2$tT-%3$tF %3$tT %4$d points"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v11, v21

    const/16 v21, 0x1

    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v11, v21

    const/16 v21, 0x2

    sget-object v22, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v21

    const/4 v8, 0x3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v11, v8

    invoke-static {v10, v11}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_6
    move-wide v9, v6

    :goto_3
    new-instance v4, Lcom/google/android/gms/fitness/d/f;

    const/4 v11, 0x0

    move/from16 v6, v20

    move-wide/from16 v7, v18

    invoke-direct/range {v4 .. v11}, Lcom/google/android/gms/fitness/d/f;-><init>(Lcom/google/android/gms/fitness/data/DataSource;ZJJLjava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/d/f;)V
    :try_end_2
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    :goto_4
    :try_start_3
    invoke-virtual {v5}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :catch_1
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unable to save syncstatus: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_3
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_8
    :try_start_4
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/fitness/sync/d;->a()Ljava/util/Collection;
    :try_end_4
    .catch Lcom/google/android/gms/fitness/sync/g; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v4

    :try_start_5
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    iput v5, v13, Lcom/google/android/gms/fitness/sync/a;->c:I

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_9
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/fitness/data/DataSource;

    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_5 .. :try_end_5} :catch_0

    move-result v4

    if-nez v4, :cond_9

    :try_start_6
    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/data/DataSource;)J

    iget-object v4, v13, Lcom/google/android/gms/fitness/sync/a;->a:Lcom/google/android/gms/fitness/data/Device;

    invoke-static {v6, v4}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/Device;)Z

    move-result v7

    new-instance v5, Lcom/google/android/gms/fitness/d/f;

    const-wide/16 v8, 0x0

    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lcom/google/android/gms/fitness/d/f;-><init>(Lcom/google/android/gms/fitness/data/DataSource;ZJJLjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Lcom/google/android/gms/fitness/n/ar;->a(Lcom/google/android/gms/fitness/d/f;)V
    :try_end_6
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v4

    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "unable to save: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_5

    :catch_3
    move-exception v4

    const-string v5, "unable to download datasources"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/sync/g;->a()Z

    move-result v5

    if-nez v5, :cond_a

    throw v4

    :cond_a
    iget v4, v13, Lcom/google/android/gms/fitness/sync/a;->b:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/fitness/sync/b;->a:I

    iget v4, v13, Lcom/google/android/gms/fitness/sync/a;->c:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/google/android/gms/fitness/sync/b;->b:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/google/android/gms/fitness/sync/b;->a(JLcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;)V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/fitness/m/a;->b()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/fitness/d/c;

    iget-object v7, v4, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/fitness/a/e;->a(Lcom/google/android/gms/fitness/data/DataSource;)Z

    move-result v8

    if-nez v8, :cond_b

    sget-object v8, Lcom/google/android/gms/fitness/d/e;->b:Lcom/google/android/gms/fitness/d/e;

    iget-object v4, v4, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v8, v4}, Lcom/google/android/gms/fitness/d/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Lcom/google/android/gms/fitness/n/ar;->c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/f;

    move-result-object v4

    if-eqz v4, :cond_d

    iget-object v8, v4, Lcom/google/android/gms/fitness/d/f;->e:Ljava/lang/String;

    iget-boolean v4, v4, Lcom/google/android/gms/fitness/d/f;->b:Z

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/gms/fitness/sync/b;->e:Lcom/google/android/gms/fitness/data/Device;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/fitness/sync/b;->a(Lcom/google/android/gms/fitness/n/ar;Lcom/google/android/gms/fitness/sync/d;Lcom/google/android/gms/fitness/data/DataSource;Ljava/lang/String;Lcom/google/android/gms/fitness/data/Device;)V

    goto :goto_7

    :cond_e
    const-string v4, "Skipping download of local data source: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_7
    .catch Lcom/google/android/gms/fitness/n/aw; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    .line 223
    :cond_f
    return-void

    :cond_10
    move-wide v9, v10

    goto/16 :goto_3
.end method
