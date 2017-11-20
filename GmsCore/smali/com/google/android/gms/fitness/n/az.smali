.class public final Lcom/google/android/gms/fitness/n/az;
.super Lcom/google/android/gms/fitness/n/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/ar;


# static fields
.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String;


# instance fields
.field private final l:Ljava/util/concurrent/atomic/AtomicReference;

.field private final m:Ljava/util/concurrent/atomic/AtomicReference;

.field private final n:Lcom/google/android/gms/fitness/n/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    const-string v0, "%s DS JOIN %s DST ON (DS.%s = DST.%s)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v4

    const-string v2, "DataSourceTypes"

    aput-object v2, v1, v5

    const-string v2, "_id"

    aput-object v2, v1, v6

    const-string v2, "data_source_id"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/az;->i:Ljava/lang/String;

    .line 111
    const-string v0, "%s DS JOIN %s DST ON (DS.%s = DST.%s) LEFT JOIN %s ST ON (DS.%s = ST.%s)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v4

    const-string v2, "DataSourceTypes"

    aput-object v2, v1, v5

    const-string v2, "_id"

    aput-object v2, v1, v6

    const-string v2, "data_source_id"

    aput-object v2, v1, v7

    const-string v2, "SyncStatus"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "data_source_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/az;->j:Ljava/lang/String;

    .line 118
    const-string v0, "%s DS JOIN %s AP ON (DS.%s = AP.%s) JOIN %s DST ON (DS.%s = DST.%s)"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v4

    const-string v2, "Applications"

    aput-object v2, v1, v5

    const-string v2, "application_id"

    aput-object v2, v1, v6

    const-string v2, "_id"

    aput-object v2, v1, v7

    const-string v2, "DataSourceTypes"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "data_source_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/az;->k:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/n/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    .line 129
    new-instance v0, Lcom/google/android/gms/fitness/n/f;

    new-instance v1, Lcom/google/android/gms/fitness/n/bc;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/fitness/n/bc;-><init>(Lcom/google/android/gms/fitness/n/az;B)V

    new-instance v2, Lcom/google/android/gms/fitness/n/be;

    invoke-direct {v2, p0, v5}, Lcom/google/android/gms/fitness/n/be;-><init>(Lcom/google/android/gms/fitness/n/az;B)V

    new-instance v3, Lcom/google/android/gms/fitness/n/bd;

    invoke-direct {v3, p0, v5}, Lcom/google/android/gms/fitness/n/bd;-><init>(Lcom/google/android/gms/fitness/n/az;B)V

    new-instance v4, Lcom/google/android/gms/fitness/n/bf;

    invoke-direct {v4, p0, v5}, Lcom/google/android/gms/fitness/n/bf;-><init>(Lcom/google/android/gms/fitness/n/az;B)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/fitness/n/f;-><init>(Lcom/google/android/gms/fitness/n/g;Lcom/google/android/gms/fitness/n/i;Lcom/google/android/gms/fitness/n/h;Lcom/google/android/gms/fitness/n/j;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    .line 149
    return-void
.end method

.method private a(Ljava/util/Set;JLjava/lang/Long;)I
    .locals 10

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1258
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 1259
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1291
    :goto_0
    return v0

    .line 1262
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1263
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1264
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1265
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1269
    :cond_2
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1270
    const/4 v0, -0x1

    goto :goto_0

    .line 1273
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1274
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    if-nez p4, :cond_4

    .line 1278
    const-string v0, "%s IN (%s) AND %s >= ?"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "data_source_id"

    aput-object v5, v4, v1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const-string v1, "end_time"

    aput-object v1, v4, v7

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1291
    :goto_2
    const-string v2, "DataPointRows"

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1283
    :cond_4
    const-string v0, "%s IN (%s) AND %s >= ? AND %s <= ?"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "data_source_id"

    aput-object v5, v4, v1

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v6

    const-string v1, "end_time"

    aput-object v1, v4, v7

    const-string v1, "end_time"

    aput-object v1, v4, v8

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_2
.end method

.method private a(JIJ)J
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1160
    const-string v0, "%s = ?"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "data_source_id"

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    const-wide/16 v4, 0x0

    cmp-long v1, p4, v4

    if-ltz v1, :cond_0

    .line 1166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND %s <= ?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "end_time"

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1167
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1170
    :cond_0
    add-int/lit8 v6, p3, -0x1

    .line 1171
    const-string v1, "DataPointRows"

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "end_time"

    aput-object v4, v2, v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v0, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string v7, "end_time"

    aput-object v7, v5, v8

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 1180
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1182
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 1180
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1182
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/google/android/gms/fitness/data/Application;)J
    .locals 7

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 510
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 514
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 515
    const-string v0, "%s = ? AND %s is null"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v1, v5

    const-string v2, "version"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 516
    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 522
    :goto_0
    const-string v1, "Applications"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 529
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "_id"

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 533
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 518
    :cond_0
    const-string v0, "%s = ? AND %s = ?"

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "package"

    aput-object v2, v1, v5

    const-string v2, "version"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 519
    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    goto :goto_0

    .line 529
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 533
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Lcom/google/android/gms/fitness/data/Device;)J
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 414
    const-string v1, "Devices"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "%s = ? AND %s = ? AND %s = ? AND %s = ?"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "make"

    aput-object v4, v3, v5

    const-string v4, "model"

    aput-object v4, v3, v6

    const-string v4, "version"

    aput-object v4, v3, v7

    const-string v4, "uid"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 424
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v0, v0

    .line 428
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 424
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)J
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2094
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 2095
    const-string v0, "%s = ?"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "app_package"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2097
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2099
    if-eqz p2, :cond_0

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND %s = ?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "data_source_id"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2101
    invoke-direct {p0, p2}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_0
    if-eqz p3, :cond_1

    .line 2104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND %s = ?"

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "data_type_id"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2105
    invoke-direct {p0, p3}, Lcom/google/android/gms/fitness/n/az;->c(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2108
    :cond_1
    const-string v1, "Subscriptions"

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2116
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "_id"

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2120
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2116
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2120
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static a(Lcom/google/android/gms/fitness/data/Session;)Landroid/content/ContentValues;
    .locals 6

    .prologue
    .line 2322
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v0

    .line 2324
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2325
    const-string v2, "app_package"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2326
    const-string v0, "start_time"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2327
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v2

    .line 2328
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 2329
    const-string v0, "end_time"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2331
    :cond_0
    const-string v0, "name"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2332
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v0

    .line 2333
    if-eqz v0, :cond_1

    .line 2334
    const-string v2, "identifier"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2336
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->f()Ljava/lang/String;

    move-result-object v0

    .line 2337
    if-eqz v0, :cond_2

    .line 2338
    const-string v2, "description"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2340
    :cond_2
    const-string v0, "activity"

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2341
    return-object v1
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/n/az;J)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/n/az;->g(J)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 4

    .prologue
    .line 888
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 889
    :cond_0
    const/4 v0, 0x0

    .line 892
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/n/f;->a(J)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/fitness/n/az;
    .locals 2

    .prologue
    .line 133
    invoke-static {p1}, Lcom/google/android/gms/fitness/n/az;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Lcom/google/android/gms/fitness/n/az;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/fitness/n/az;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method private static a(Lcom/google/android/gms/fitness/data/DataPoint;JJ)Lcom/google/n/a/a/a/a/ah;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1046
    invoke-static {p0, v4, v4}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/android/gms/fitness/data/DataPoint;ZZ)Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    .line 1051
    new-instance v1, Lcom/google/n/a/a/a/a/ah;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/ah;-><init>()V

    .line 1052
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    .line 1053
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_0

    .line 1054
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    .line 1056
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/n/a/a/a/a/c;

    aput-object v0, v2, v4

    iput-object v2, v1, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    .line 1057
    return-object v1
.end method

.method private static a(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1960
    if-nez p0, :cond_0

    .line 1961
    const-string v0, ""

    .line 1969
    :goto_0
    return-object v0

    .line 1964
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v0, p0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1965
    const-string v0, "?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    const/4 v0, 0x1

    :goto_1
    if-ge v0, p0, :cond_1

    .line 1967
    const-string v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1969
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/f/g;)Ljava/util/List;
    .locals 4

    .prologue
    .line 778
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/f/g;->a()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 779
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/f/g;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 780
    invoke-virtual {p0, v0}, Landroid/support/v4/f/g;->a(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 782
    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 1

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1406
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1407
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v0

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .prologue
    .line 2411
    const-string v1, "Sessions"

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "app_package"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "start_time"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "end_time"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "identifier"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "description"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "activity"

    aput-object v3, v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    :goto_0
    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2428
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2429
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2430
    const-string v1, "app_package"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2431
    const-string v1, "start_time"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    .line 2432
    const-string v1, "end_time"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    .line 2433
    const-string v1, "name"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2434
    const-string v1, "identifier"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2435
    const-string v1, "description"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2436
    const-string v1, "activity"

    invoke-static {v11, v1}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    .line 2438
    new-instance v1, Lcom/google/android/gms/fitness/data/Session;

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/fitness/data/Session;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2449
    :catchall_0
    move-exception v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move-object v3, p1

    .line 2411
    goto :goto_0

    .line 2449
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Boolean;)Ljava/util/List;
    .locals 12

    .prologue
    .line 1978
    const/4 v5, 0x0

    .line 1979
    if-eqz p4, :cond_0

    .line 1980
    const-string v1, "%s %s"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "end_time"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ASC"

    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1983
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 1984
    const-string v0, "Performing DB query for selection %s args %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1987
    const-string v1, "DataPointRows"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "data_point"

    aput-object v3, v2, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 1998
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1999
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2000
    new-instance v0, Lcom/google/n/a/a/a/a/ah;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/ah;-><init>()V

    .line 2002
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2003
    const-string v1, "data_point"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object v1, v0

    .line 2005
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 2007
    :try_start_1
    invoke-virtual {v1}, Lcom/google/n/a/a/a/a/ah;->b()Lcom/google/n/a/a/a/a/ah;

    .line 2008
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    array-length v6, v0

    invoke-static {v1, v0, v6}, Lcom/google/protobuf/nano/j;->b(Lcom/google/protobuf/nano/j;[BI)Lcom/google/protobuf/nano/j;

    move-result-object v0

    check-cast v0, Lcom/google/n/a/a/a/a/ah;
    :try_end_1
    .catch Lcom/google/protobuf/nano/i; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2014
    :try_start_2
    iget-object v1, v0, Lcom/google/n/a/a/a/a/ah;->a:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v6

    .line 2015
    iget-object v1, v0, Lcom/google/n/a/a/a/a/ah;->b:Ljava/lang/Long;

    invoke-direct {p0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v7

    .line 2016
    invoke-virtual {v6}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v8

    .line 2017
    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/n/bg;

    .line 2018
    if-nez v1, :cond_1

    .line 2019
    new-instance v1, Lcom/google/android/gms/fitness/n/bg;

    invoke-direct {p0, v8}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataType;)Landroid/support/v4/f/g;

    move-result-object v9

    invoke-static {v8}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataType;)Landroid/util/SparseIntArray;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v9, v10, v11}, Lcom/google/android/gms/fitness/n/bg;-><init>(Landroid/support/v4/f/g;Landroid/util/SparseIntArray;B)V

    .line 2022
    invoke-interface {v3, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2025
    :cond_1
    iget-object v1, v0, Lcom/google/n/a/a/a/a/ah;->c:[Lcom/google/n/a/a/a/a/c;

    const/4 v8, 0x0

    aget-object v1, v1, v8

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/n/a/a/a/a/c;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataPoint;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2026
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2027
    goto :goto_1

    .line 1980
    :cond_2
    const-string v0, "DESC"

    goto/16 :goto_0

    .line 2009
    :catch_0
    move-exception v0

    :try_start_3
    const-string v6, "Couldn\'t parse proto"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/google/android/gms/fitness/o/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2011
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2031
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v4
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/n/az;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/google/android/gms/fitness/n/az;->i()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;)Ljava/util/Map;
    .locals 18

    .prologue
    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 1692
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1693
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    .line 1708
    :goto_0
    return-object v2

    .line 1696
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    const-string v2, "INSERT INTO %s(%s, %s, %s, %s) VALUES(?, ?, ?, ?)"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "DataPointRows"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "start_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "end_time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "data_source_id"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data_point"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Application;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    move-object v3, v4

    :goto_2
    invoke-interface {v12, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v12, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataSource;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v14

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    if-nez v3, :cond_6

    const-wide/16 v4, -0x1

    :goto_3
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v3, v6, v16

    if-lez v3, :cond_7

    :goto_4
    const/4 v3, 0x1

    invoke-virtual {v11, v3, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x2

    invoke-virtual {v11, v3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x3

    invoke-virtual {v11, v3, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    const/4 v3, 0x4

    invoke-static {v2, v14, v15, v4, v5}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/DataPoint;JJ)Lcom/google/n/a/a/a/a/ah;

    move-result-object v4

    invoke-static {v4}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "Attempting to add %s to %s which already has app"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-static {v3, v5}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    move-object v3, v4

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v3, v4

    goto :goto_2

    :cond_5
    new-instance v3, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v3}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v5

    iput v5, v3, Lcom/google/android/gms/fitness/data/h;->b:I

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v3

    move-object/from16 v0, p2

    iput-object v0, v3, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    goto/16 :goto_3

    :cond_7
    move-wide v6, v8

    goto/16 :goto_4

    .line 1697
    :cond_8
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1698
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1699
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1700
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v8

    invoke-virtual {v3, v6, v8, v9}, Lcom/google/android/gms/fitness/n/f;->a(Lcom/google/android/gms/fitness/data/DataSource;J)V

    .line 1701
    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/data/DataPoint;

    if-nez v3, :cond_a

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->h()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v7, v8, v14

    if-eqz v7, :cond_b

    cmp-long v7, v8, v12

    if-eqz v7, :cond_b

    cmp-long v3, v8, v12

    if-lez v3, :cond_9

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_b
    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v12

    cmp-long v3, v8, v12

    if-lez v3, :cond_9

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1705
    :cond_c
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1706
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/fitness/data/DataPoint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/fitness/n/au;

    invoke-interface {v3, v2}, Lcom/google/android/gms/fitness/n/au;->a(Lcom/google/android/gms/fitness/data/DataPoint;)Lcom/google/android/gms/fitness/n/av;

    move-result-object v2

    iget-object v3, v2, Lcom/google/android/gms/fitness/n/av;->a:Ljava/util/Set;

    iget-wide v6, v2, Lcom/google/android/gms/fitness/n/av;->b:J

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v7, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Set;JLjava/lang/Long;)I

    move-result v2

    const-string v5, "Deleted %d pre-aggregated data points from %d aggregate data sources"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v5, v6}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_6

    :cond_e
    move-object v2, v10

    .line 1708
    goto/16 :goto_0
.end method

.method private a(JJJ)Ljava/util/Set;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1668
    const-string v0, "%s = ? AND (%s >= ? AND %s <= ?)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "data_source_id"

    aput-object v2, v1, v3

    const-string v2, "end_time"

    aput-object v2, v1, v4

    const-string v2, "end_time"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p5, p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    .line 1682
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private a(JLandroid/content/ContentValues;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2533
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 2536
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 2537
    const-string v0, "SyncStatus"

    const-string v1, "%s = ?"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "_id"

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2545
    :goto_0
    return-void

    .line 2543
    :cond_0
    const-string v0, "SyncStatus"

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/n/az;JLjava/util/List;)V
    .locals 5

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v3, "uuid"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "properties"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "permissions"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "device_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "BleCharacteristics"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Collection;Z)V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1354
    const-string v0, "INSERT INTO %s(%s, %s, %s, %s) VALUES(?, ?, ?, ?)"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "ChangeLog"

    aput-object v3, v1, v2

    const-string v2, "source_table"

    aput-object v2, v1, v8

    const-string v2, "timestamp"

    aput-object v2, v1, v9

    const-string v2, "is_delete"

    aput-object v2, v1, v10

    const-string v2, "content"

    aput-object v2, v1, v11

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 1362
    new-instance v3, Lcom/google/n/a/a/a/a/m;

    invoke-direct {v3}, Lcom/google/n/a/a/a/a/m;-><init>()V

    .line 1363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1364
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1365
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/google/n/a/a/a/a/m;->b:Ljava/lang/String;

    .line 1366
    invoke-static {v0, v8, v8}, Lcom/google/android/gms/fitness/e/c;->a(Lcom/google/android/gms/fitness/data/DataPoint;ZZ)Lcom/google/n/a/a/a/a/c;

    move-result-object v0

    iput-object v0, v3, Lcom/google/n/a/a/a/a/m;->c:Lcom/google/n/a/a/a/a/c;

    .line 1367
    invoke-static {v3}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v7

    .line 1369
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 1370
    const-string v0, "DataPoints"

    invoke-virtual {v2, v8, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1371
    invoke-virtual {v2, v9, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1372
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x1

    :goto_1
    invoke-virtual {v2, v10, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1373
    invoke-virtual {v2, v11, v7}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1374
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 1372
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1376
    :cond_1
    return-void
.end method

.method private a(JLcom/google/android/gms/fitness/data/DataPoint;)Z
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1330
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 1332
    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataPoint;->d()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    .line 1334
    const-string v4, "DELETE FROM %s WHERE %s = ? AND %s = ? AND %s = ?"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "DataPointRows"

    aput-object v6, v5, v1

    const-string v6, "data_source_id"

    aput-object v6, v5, v0

    const-string v6, "end_time"

    aput-object v6, v5, v8

    const-string v6, "data_point"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4, v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 1340
    invoke-virtual {v4, v0, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1341
    invoke-virtual {p3}, Lcom/google/android/gms/fitness/data/DataPoint;->i()J

    move-result-wide v6

    invoke-virtual {v4, v8, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1342
    invoke-static {p3, p1, p2, v2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/DataPoint;JJ)Lcom/google/n/a/a/a/a/ah;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v2

    invoke-virtual {v4, v9, v2}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1344
    const/16 v2, 0xb

    invoke-static {v2}, Lcom/google/android/gms/common/util/t;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1345
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v2

    if-lez v2, :cond_0

    .line 1349
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1345
    goto :goto_0

    .line 1348
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method private static a(Ljava/util/List;JJ)[Ljava/lang/String;
    .locals 9

    .prologue
    .line 1945
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    .line 1946
    const/4 v0, 0x0

    .line 1947
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1948
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 1949
    goto :goto_0

    .line 1950
    :cond_0
    add-int/lit8 v0, v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    .line 1951
    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 1952
    return-object v3
.end method

.method private b(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)I
    .locals 6

    .prologue
    .line 2149
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2151
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2153
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "app_package"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2155
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2157
    if-eqz p2, :cond_0

    .line 2158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND %s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "data_source_id"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    invoke-direct {p0, p2}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2161
    :cond_0
    if-eqz p3, :cond_1

    .line 2162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND %s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "data_type_id"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2163
    invoke-direct {p0, p3}, Lcom/google/android/gms/fitness/n/az;->c(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v0

    .line 2166
    const-string v3, "Subscriptions"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2170
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2173
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method private b(Lcom/google/android/gms/fitness/data/DataType;)J
    .locals 7

    .prologue
    .line 169
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 173
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 174
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->d(J)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    .line 176
    invoke-virtual {v2, p1}, Lcom/google/android/gms/fitness/data/DataType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :goto_0
    return-wide v0

    .line 179
    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/n/at;

    const-string v1, "Conflicting data types!  New: %s, existing: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/fitness/n/at;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataType;)V

    throw v0

    .line 187
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 188
    const-string v0, "name"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "DataTypes"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 192
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    .line 193
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 194
    const-string v5, "data_type_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    const-string v5, "field_name"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v5, "format"

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v0, "DataTypeFields"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0, v2, v3, p1}, Lcom/google/android/gms/fitness/n/f;->a(JLcom/google/android/gms/fitness/data/DataType;)V

    move-wide v0, v2

    .line 201
    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 968
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "DST.%s"

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "data_source_id"

    aput-object v3, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 976
    :try_start_0
    new-instance v0, Landroid/support/v4/f/g;

    invoke-direct {v0}, Landroid/support/v4/f/g;-><init>()V

    .line 977
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 979
    :cond_0
    const-string v2, "data_source_id"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    .line 980
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/support/v4/f/g;->a(JLjava/lang/Object;)V

    .line 981
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 985
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private b(Lcom/google/android/gms/fitness/n/b;)Ljava/util/Collection;
    .locals 14

    .prologue
    const/4 v11, 0x1

    .line 1887
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1888
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1890
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/n/b;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1891
    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->c(Lcom/google/android/gms/fitness/data/DataSource;)I

    move-result v3

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->a(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v6

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->b(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v12

    iget-object v1, p1, Lcom/google/android/gms/fitness/n/b;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    if-ltz v3, :cond_2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/fitness/n/b;->b(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(JIJ)J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    :goto_1
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " OR "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "(%s = ? AND %s >= ? AND %s <= ?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "data_source_id"

    aput-object v7, v3, v6

    const-string v6, "end_time"

    aput-object v6, v3, v11

    const/4 v6, 0x2

    const-string v7, "end_time"

    aput-object v7, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1895
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v9, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_2
    move-wide v4, v6

    goto :goto_1
.end method

.method private b(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1417
    const-string v1, "ChangeLog"

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "timestamp"

    aput-object v0, v2, v6

    const-string v0, "is_delete"

    aput-object v0, v2, v7

    const-string v0, "content"

    aput-object v0, v2, v8

    const-string v0, "%s = ? AND %s <= ? AND %s <= ? AND %s < ?"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "source_table"

    aput-object v4, v3, v5

    const-string v4, "timestamp"

    aput-object v4, v3, v6

    const-string v4, "last_sync_ms"

    aput-object v4, v3, v7

    const-string v4, "sync_tries"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v7

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const/4 v5, 0x0

    move-object v0, p0

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v8

    .line 1442
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1444
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1445
    const-string v1, "_id"

    invoke-static {v8, v1}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    .line 1446
    const-string v1, "timestamp"

    invoke-static {v8, v1}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    .line 1447
    const-string v1, "is_delete"

    invoke-static {v8, v1}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v6

    .line 1448
    const-string v1, "content"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1450
    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    .line 1451
    new-instance v1, Lcom/google/android/gms/fitness/n/c;

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/n/c;-><init>(JJZ[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1455
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private static b(Ljava/util/List;)Ljava/util/Set;
    .locals 2

    .prologue
    .line 2754
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 2755
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2756
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 2757
    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 138
    invoke-static {p1}, Lcom/google/android/gms/fitness/n/az;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c(Lcom/google/android/gms/fitness/data/DataType;)J
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/f;->a(Lcom/google/android/gms/fitness/data/DataType;)Ljava/lang/Long;

    move-result-object v0

    .line 224
    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 232
    :cond_0
    :goto_0
    return-wide v0

    .line 228
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 229
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v2, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/fitness/n/f;->a(JLcom/google/android/gms/fitness/data/DataType;)V

    goto :goto_0
.end method

.method private d(Lcom/google/android/gms/fitness/data/DataSource;)J
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 597
    invoke-static {p1}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v0

    .line 600
    cmp-long v2, v0, v6

    if-eqz v2, :cond_0

    .line 640
    :goto_0
    return-wide v0

    .line 606
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 607
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 608
    const-string v0, "source_name"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "identifier"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v0, "version"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const-string v0, "type"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    const-string v0, "obfuscated"

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->j()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 613
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->g()Ljava/lang/String;

    move-result-object v0

    .line 614
    if-eqz v0, :cond_1

    .line 615
    const-string v1, "stream_name"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    .line 619
    if-eqz v3, :cond_2

    .line 620
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    invoke-direct {p0, v3}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/Application;)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_4

    .line 621
    :goto_1
    const-string v3, "application_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 624
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->f()Lcom/google/android/gms/fitness/data/Device;

    move-result-object v3

    .line 625
    if-eqz v3, :cond_3

    .line 626
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    invoke-direct {p0, v3}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/Device;)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-eqz v4, :cond_5

    .line 627
    :goto_2
    const-string v3, "device_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 630
    :cond_3
    const-string v0, "DataSources"

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 633
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->a()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/gms/fitness/n/az;->b(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v4

    .line 634
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 635
    const-string v3, "data_source_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    const-string v3, "data_type_id"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    const-string v3, "DataSourceTypes"

    invoke-virtual {p0, v3, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 638
    iget-object v2, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v2, v0, v1, p1}, Lcom/google/android/gms/fitness/n/f;->a(JLcom/google/android/gms/fitness/data/DataSource;)V

    goto/16 :goto_0

    .line 620
    :cond_4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "package"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Application;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "details_url"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Application;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Applications"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto :goto_1

    .line 626
    :cond_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "make"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "model"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v3}, Lcom/google/android/gms/fitness/data/Device;->e()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "Devices"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    goto/16 :goto_2
.end method

.method private d(Lcom/google/android/gms/fitness/data/DataType;)Landroid/support/v4/f/g;
    .locals 8

    .prologue
    .line 349
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->c(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v0

    .line 350
    iget-object v2, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/fitness/n/f;->c(J)Ljava/util/Map;

    move-result-object v2

    .line 352
    new-instance v3, Landroid/support/v4/f/g;

    invoke-direct {v3}, Landroid/support/v4/f/g;-><init>()V

    .line 353
    const/4 v0, 0x0

    .line 354
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    .line 355
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v6, v7, v0}, Landroid/support/v4/f/g;->a(JLjava/lang/Object;)V

    .line 356
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 357
    goto :goto_0

    .line 358
    :cond_0
    return-object v3
.end method

.method private d(J)Lcom/google/android/gms/fitness/data/DataType;
    .locals 3

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 263
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 267
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/fitness/n/f;->b(J)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    goto :goto_0
.end method

.method private d(Lcom/google/android/gms/fitness/data/Session;Z)V
    .locals 6

    .prologue
    .line 1380
    sget-object v0, Lcom/google/android/gms/fitness/e/c;->a:Lcom/google/android/gms/fitness/e/b;

    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/e/b;->a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/nano/j;->a(Lcom/google/protobuf/nano/j;)[B

    move-result-object v0

    .line 1382
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1383
    const-string v2, "source_table"

    const-string v3, "Sessions"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    const-string v2, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1385
    const-string v2, "is_delete"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1386
    const-string v2, "content"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1387
    const-string v0, "ChangeLog"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1388
    return-void
.end method

.method private e(Lcom/google/android/gms/fitness/data/DataSource;)J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 798
    if-nez p1, :cond_0

    move-wide v0, v6

    .line 819
    :goto_0
    return-wide v0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/fitness/n/f;->a(Lcom/google/android/gms/fitness/data/DataSource;)Ljava/lang/Long;

    move-result-object v0

    .line 803
    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 807
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 808
    const-string v1, "DataSources"

    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "%s = ? AND %s = ?"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "identifier"

    aput-object v4, v3, v5

    const-string v4, "version"

    aput-object v4, v3, v8

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->i()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 814
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 815
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 816
    iget-object v3, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v3, v0, v1, p1}, Lcom/google/android/gms/fitness/n/f;->a(JLcom/google/android/gms/fitness/data/DataSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 819
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-wide v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static e(Lcom/google/android/gms/fitness/data/DataType;)Landroid/util/SparseIntArray;
    .locals 4

    .prologue
    .line 365
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 366
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/DataType;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/Field;

    .line 368
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Field;->b()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 369
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 370
    goto :goto_0

    .line 371
    :cond_0
    return-object v2
.end method

.method private e(J)Lcom/google/android/gms/fitness/data/Device;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 450
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 452
    const-string v1, "Devices"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "make"

    aput-object v0, v2, v5

    const-string v0, "model"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "version"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "uid"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "type"

    aput-object v3, v2, v0

    const-string v0, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 461
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "make"

    invoke-static {v6, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string v0, "model"

    invoke-static {v6, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 464
    const-string v0, "version"

    invoke-static {v6, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 465
    const-string v0, "uid"

    invoke-static {v6, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 466
    const-string v0, "type"

    invoke-static {v6, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 467
    new-instance v0, Lcom/google/android/gms/fitness/data/Device;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/Device;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 469
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private f(J)Lcom/google/android/gms/fitness/data/Application;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 557
    const-string v1, "Applications"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "package"

    aput-object v0, v2, v5

    const-string v0, "version"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "details_url"

    aput-object v3, v2, v0

    const-string v0, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 568
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "package"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 570
    const-string v0, "version"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    .line 571
    const-string v0, "details_url"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 574
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private g(J)Lcom/google/android/gms/fitness/data/DataSource;
    .locals 13

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 910
    sget-object v1, Lcom/google/android/gms/fitness/n/az;->i:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "source_name"

    aput-object v0, v2, v5

    const-string v0, "type"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "application_id"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "device_id"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "stream_name"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "obfuscated"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "data_type_id"

    aput-object v3, v2, v0

    const-string v0, "DS.%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "_id"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 926
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    const-string v0, "source_name"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 928
    const-string v2, "type"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 929
    const-string v3, "device_id"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    .line 930
    const-string v3, "application_id"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    .line 931
    const-string v3, "stream_name"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 932
    const-string v8, "obfuscated"

    invoke-static {v1, v8}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v8

    .line 934
    const-string v9, "data_type_id"

    invoke-static {v1, v9}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    .line 935
    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/fitness/n/az;->d(J)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v9

    .line 937
    new-instance v10, Lcom/google/android/gms/fitness/data/h;

    invoke-direct {v10}, Lcom/google/android/gms/fitness/data/h;-><init>()V

    iput-object v9, v10, Lcom/google/android/gms/fitness/data/h;->a:Lcom/google/android/gms/fitness/data/DataType;

    iput-object v0, v10, Lcom/google/android/gms/fitness/data/h;->c:Ljava/lang/String;

    iput v2, v10, Lcom/google/android/gms/fitness/data/h;->b:I

    iput-boolean v8, v10, Lcom/google/android/gms/fitness/data/h;->g:Z

    invoke-static {v3}, Lcom/google/c/a/ax;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/google/android/gms/fitness/data/h;->a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/h;

    move-result-object v0

    .line 944
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/fitness/n/az;->e(J)Lcom/google/android/gms/fitness/data/Device;

    move-result-object v2

    .line 945
    if-eqz v2, :cond_0

    .line 946
    iput-object v2, v0, Lcom/google/android/gms/fitness/data/h;->d:Lcom/google/android/gms/fitness/data/Device;

    .line 949
    :cond_0
    invoke-direct {p0, v6, v7}, Lcom/google/android/gms/fitness/n/az;->f(J)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v2

    .line 950
    if-eqz v2, :cond_1

    .line 951
    iput-object v2, v0, Lcom/google/android/gms/fitness/data/h;->e:Lcom/google/android/gms/fitness/data/Application;

    .line 953
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/h;->a()Lcom/google/android/gms/fitness/data/DataSource;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 958
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v0

    .line 955
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private h(J)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2552
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 2554
    const-string v1, "SyncStatus"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "data_source_id"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2560
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 2564
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 2560
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2564
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    const-string v0, "[^a-zA-Z0-9.-]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fitness.db."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)J
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 242
    const-string v1, "DataTypes"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "name"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 250
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_id"

    invoke-static {v2, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 254
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-wide v0

    .line 250
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private i(J)Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2707
    const-string v1, "BleCharacteristics"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "uuid"

    aput-object v0, v2, v5

    const-string v0, "properties"

    aput-object v0, v2, v6

    const/4 v0, 0x2

    const-string v3, "permissions"

    aput-object v3, v2, v0

    const-string v0, " %s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "device_id"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2718
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2721
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2722
    const-string v2, "uuid"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2723
    const-string v3, "properties"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    .line 2724
    const-string v4, "permissions"

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 2725
    new-instance v5, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-direct {v5, v2, v3, v4}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;II)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2729
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2731
    return-object v0
.end method

.method private i()Ljava/util/Map;
    .locals 17

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 681
    sget-object v2, Lcom/google/android/gms/fitness/n/az;->i:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;

    move-result-object v11

    .line 684
    sget-object v2, Lcom/google/android/gms/fitness/n/az;->j:Ljava/lang/String;

    const-string v3, "%s = 1"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v6, "is_remote"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;

    move-result-object v3

    new-instance v12, Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/support/v4/f/g;->a()I

    move-result v2

    invoke-direct {v12, v2}, Ljava/util/HashSet;-><init>(I)V

    move v2, v5

    :goto_0
    invoke-virtual {v3}, Landroid/support/v4/f/g;->a()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Landroid/support/v4/f/g;->a(I)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v12, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    :cond_0
    const-string v13, "min_end"

    .line 691
    const-string v14, "max_end"

    .line 692
    const-string v3, "DataPointRows"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "data_source_id"

    aput-object v2, v4, v5

    const-string v2, "min(%s) as %s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "end_time"

    aput-object v7, v6, v5

    aput-object v13, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    const-string v2, "max(%s) as %s"

    new-array v6, v9, [Ljava/lang/Object;

    const-string v7, "end_time"

    aput-object v7, v6, v5

    aput-object v14, v6, v8

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    sget-object v6, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    const-string v7, "data_source_id"

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 703
    :try_start_0
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 704
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 705
    const-string v2, "data_source_id"

    invoke-static {v15, v2}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v3

    .line 706
    invoke-static {v15, v13}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    .line 707
    invoke-static {v15, v14}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    .line 709
    invoke-virtual {v11, v3, v4}, Landroid/support/v4/f/g;->a(J)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    move-object v10, v0

    .line 710
    invoke-interface {v12, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    .line 711
    new-instance v2, Lcom/google/android/gms/fitness/d/d;

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/fitness/d/d;-><init>(JZJJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 716
    :catchall_0
    move-exception v2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    return-object v16
.end method

.method private j(Ljava/lang/String;)Ljava/util/List;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 830
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 831
    const-string v1, "DataSources"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "%s = ?"

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "identifier"

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 838
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 839
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 840
    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 844
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method private j(J)V
    .locals 5

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2815
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/au;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/fitness/n/au;->a(J)Lcom/google/android/gms/fitness/n/av;

    move-result-object v0

    .line 2818
    iget-object v1, v0, Lcom/google/android/gms/fitness/n/av;->a:Ljava/util/Set;

    .line 2819
    iget-wide v2, v0, Lcom/google/android/gms/fitness/n/av;->b:J

    .line 2820
    const/4 v0, 0x0

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Set;JLjava/lang/Long;)I

    move-result v0

    .line 2821
    const-string v2, "Deleted %d pre-aggregated data points from %d aggregate data sources"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2824
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(JJLcom/google/android/gms/fitness/data/DataSource;)I
    .locals 9

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1229
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1230
    invoke-direct {p0, p5}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    .line 1231
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/n/az;->a(JJJ)Ljava/util/Set;

    move-result-object v0

    .line 1232
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1233
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1234
    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/fitness/n/az;->a(JLcom/google/android/gms/fitness/data/DataPoint;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1235
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1244
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1238
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Collection;Z)V

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1242
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1244
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;J)I
    .locals 8

    .prologue
    .line 1549
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1551
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1552
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sub-long v4, p2, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Set;JLjava/lang/Long;)I

    move-result v0

    .line 1558
    if-lez v0, :cond_0

    .line 1559
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    .line 1560
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/fitness/n/az;->h(J)J

    move-result-wide v4

    .line 1562
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1563
    const-string v6, "data_source_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1564
    const-string v2, "min_local_timestamp"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1565
    invoke-direct {p0, v4, v5, v1}, Lcom/google/android/gms/fitness/n/az;->a(JLandroid/content/ContentValues;)V

    .line 1567
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Ljava/util/List;Z)I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1298
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1323
    :goto_0
    return v0

    .line 1301
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1303
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1304
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1305
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 1306
    const-string v2, "Invalid data source specified: %s"

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1308
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    move v0, v1

    goto :goto_0

    .line 1311
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1312
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1313
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, v0}, Lcom/google/android/gms/fitness/n/az;->a(JLcom/google/android/gms/fitness/data/DataPoint;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1314
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1323
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1317
    :cond_3
    if-eqz p2, :cond_4

    .line 1318
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Collection;Z)V

    .line 1320
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1321
    invoke-interface {v1}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 1323
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;)J
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 584
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 585
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v0

    .line 586
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;I)J
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 1099
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1101
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1102
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 1103
    cmp-long v0, v1, v4

    if-nez v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    move-wide v0, v4

    :goto_0
    return-wide v0

    .line 1106
    :cond_0
    const-wide/16 v4, -0x1

    move-object v0, p0

    move v3, p2

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(JIJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 1108
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    .line 1108
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1109
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;)J
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 157
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->b(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v0

    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-wide v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Ljava/util/Collection;)J
    .locals 10

    .prologue
    const-wide/16 v6, -0x1

    .line 1117
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1119
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1120
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1121
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1122
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1123
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1145
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1127
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1128
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    :goto_1
    return-wide v6

    .line 1131
    :cond_2
    :try_start_2
    const-string v1, "DataPointRows"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "min(%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "end_time"

    aput-object v9, v5, v8

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s IN (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v8, "data_source_id"

    aput-object v8, v3, v5

    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1140
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v0

    .line 1142
    :goto_2
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1145
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    move-wide v6, v0

    goto :goto_1

    :cond_3
    move-wide v0, v6

    .line 1140
    goto :goto_2

    .line 1142
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(Ljava/util/concurrent/TimeUnit;)J
    .locals 4

    .prologue
    .line 2810
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->g:Landroid/content/Context;

    const-string v1, "fitness"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cache_start_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSource;JJI)Lcom/google/android/gms/fitness/data/DataSet;
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1779
    const-string v0, "Reading %s %2$tF %2$tT %3$tF %3$tT"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1783
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 1784
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-nez v4, :cond_0

    move-wide p4, v0

    .line 1787
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1789
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1790
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v1, "Found zero recorded data for %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1791
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1793
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 1796
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v1

    .line 1797
    if-eq p6, v7, :cond_4

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    if-le v4, v2, :cond_4

    .line 1801
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1802
    invoke-static {v4}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1803
    invoke-virtual {v1, v4}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    .line 1808
    :goto_1
    const-string v0, "Found %s results"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1809
    return-object v1

    .line 1790
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    const-string v0, "%s IN (%s)"

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND %s BETWEEN ? AND ?"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "data_source_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "end_time"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "end_time"

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p2, p3, p4, p5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/List;JJ)[Ljava/lang/String;

    move-result-object v1

    if-ne p6, v7, :cond_3

    move v0, v2

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v4, v1, p6, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/Boolean;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "%s = %s"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_3

    .line 1793
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1805
    :cond_4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Ljava/lang/Iterable;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 4

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 209
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->i(Ljava/lang/String;)J

    move-result-wide v0

    .line 211
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    .line 211
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->d(J)Lcom/google/android/gms/fitness/data/DataType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/c/j/a/f;
    .locals 2

    .prologue
    .line 2570
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/as;

    .line 2572
    if-eqz v0, :cond_0

    .line 2573
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/as;->a(Lcom/google/android/gms/fitness/data/BleDevice;)Lcom/google/c/j/a/v;

    move-result-object v0

    .line 2577
    :goto_0
    new-instance v1, Lcom/google/android/gms/fitness/n/ba;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/n/ba;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->b(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/v;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/fitness/n/bb;

    invoke-direct {v1, p0}, Lcom/google/android/gms/fitness/n/bb;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    invoke-static {v0, v1}, Lcom/google/c/j/a/n;->a(Lcom/google/c/j/a/v;Lcom/google/c/a/y;)Lcom/google/c/j/a/f;

    move-result-object v0

    return-object v0

    .line 2575
    :cond_0
    new-instance v0, Lcom/google/android/gms/fitness/internal/ble/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/fitness/internal/ble/b;-><init>(Lcom/google/android/gms/fitness/data/BleDevice;)V

    invoke-static {v0}, Lcom/google/c/j/a/n;->a(Ljava/lang/Object;)Lcom/google/c/j/a/v;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataPoint;Lcom/google/android/gms/fitness/data/Application;)Ljava/lang/Long;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1577
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;

    move-result-object v0

    .line 1578
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1579
    const/4 v0, 0x0

    .line 1584
    :goto_0
    return-object v0

    .line 1581
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 1582
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "more than one dataPoints inserted: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/o/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1584
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0
.end method

.method public final a(IJ)Ljava/util/List;
    .locals 2

    .prologue
    .line 1393
    const-string v0, "DataPoints"

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/util/List;
    .locals 3

    .prologue
    .line 1399
    const-string v0, "Sessions"

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;IJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataType;Z)Ljava/util/List;
    .locals 7

    .prologue
    .line 723
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 725
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 726
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->c(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v2

    .line 727
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "data_type_id"

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 728
    if-eqz p2, :cond_0

    .line 729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND %s = 1"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "is_remote"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    :goto_0
    sget-object v1, Lcom/google/android/gms/fitness/n/az;->j:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-direct {p0, v1, v0, v4}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/support/v4/f/g;)Ljava/util/List;

    move-result-object v0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    .line 731
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND (%1$s = 0 OR %1$s IS NULL)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "is_remote"

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 741
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;
    .locals 10

    .prologue
    .line 2353
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 2355
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2358
    const-string v1, ""

    .line 2359
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2360
    const/4 v0, 0x1

    .line 2362
    if-eqz p1, :cond_0

    .line 2363
    const-string v0, "%s %s = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string v4, "app_package"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2365
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2366
    const/4 v0, 0x0

    .line 2368
    :cond_0
    if-eqz p2, :cond_1

    .line 2369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%s %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_5

    const-string v0, ""

    :goto_0
    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "name"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2371
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2372
    const/4 v0, 0x0

    .line 2374
    :cond_1
    if-eqz p3, :cond_2

    .line 2375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " %s %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_1
    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "identifier"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2377
    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2378
    const/4 v0, 0x0

    .line 2380
    :cond_2
    const-wide/16 v4, -0x1

    cmp-long v3, p4, v4

    if-eqz v3, :cond_a

    .line 2381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " %s %s >= ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-eqz v0, :cond_7

    const-string v0, ""

    :goto_2
    aput-object v0, v4, v5

    const/4 v0, 0x1

    const-string v5, "start_time"

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2383
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2384
    const/4 v0, 0x0

    move v8, v0

    move-object v0, v1

    move v1, v8

    .line 2386
    :goto_3
    const-wide/16 v4, -0x1

    cmp-long v3, p6, v4

    if-eqz v3, :cond_3

    .line 2387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %s %s <= ?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_8

    const-string v0, ""

    :goto_4
    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v6, "end_time"

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2389
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2391
    :cond_3
    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    .line 2393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %s ( %s < ? OR %s > ?)"

    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    if-eqz v1, :cond_9

    const-string v0, ""

    :goto_5
    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v1, "start_time"

    aput-object v1, v5, v0

    const/4 v0, 0x2

    const-string v1, "end_time"

    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2397
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2398
    const-wide/16 v4, -0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v1, v0

    .line 2401
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2403
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2406
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    .line 2369
    :cond_5
    :try_start_1
    const-string v0, "AND"

    goto/16 :goto_0

    .line 2375
    :cond_6
    const-string v0, "AND"

    goto/16 :goto_1

    .line 2381
    :cond_7
    const-string v0, "AND"

    goto/16 :goto_2

    .line 2387
    :cond_8
    const-string v0, "AND"

    goto/16 :goto_4

    .line 2393
    :cond_9
    const-string v0, "AND"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 2406
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    :cond_a
    move v8, v0

    move-object v0, v1

    move v1, v8

    goto/16 :goto_3
.end method

.method public final a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/f;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/n/b;)Ljava/util/Map;
    .locals 8

    .prologue
    .line 1842
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/n/b;->a()Ljava/util/Set;

    move-result-object v3

    .line 1843
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1844
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1881
    :goto_0
    return-object v0

    .line 1847
    :cond_0
    const-string v0, "Fitness"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1849
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1850
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1852
    :cond_1
    const-string v0, "Performing bulk query for %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/google/android/gms/fitness/o/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1855
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 1859
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1861
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1863
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->b(Lcom/google/android/gms/fitness/n/b;)Ljava/util/Collection;

    move-result-object v6

    .line 1865
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1867
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 1871
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1872
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1873
    invoke-static {v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/data/DataSet;

    move-result-object v7

    invoke-interface {v2, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1867
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1875
    :cond_3
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    .line 1876
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/DataSet;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/fitness/data/DataSet;->a(Lcom/google/android/gms/fitness/data/DataPoint;)V

    goto :goto_3

    .line 1879
    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    .line 1880
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-static {v3, v4, v0, v1}, Lcom/google/android/gms/fitness/c/a;->a(Ljava/util/Set;IJ)V

    move-object v0, v2

    .line 1881
    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 9

    .prologue
    .line 1610
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1611
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1620
    :goto_0
    return-object v0

    .line 1613
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1615
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1616
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 1617
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1620
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    .line 1616
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v4

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v6

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v8

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->c()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/android/gms/fitness/data/DataSource;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should have dataSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataPoint;->e()J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_2

    :cond_3
    invoke-direct {p0, v8}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/fitness/n/az;->a(JJJ)Ljava/util/Set;

    move-result-object v2

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataPoint;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1620
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1616
    :cond_4
    :try_start_2
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v8}, Lcom/google/android/gms/fitness/data/DataSource;->e()Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;)Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_1
.end method

.method public final a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;
    .locals 2

    .prologue
    .line 1593
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1595
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1596
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;)Ljava/util/Map;

    move-result-object v0

    .line 1597
    if-eqz p3, :cond_0

    .line 1598
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/Collection;Z)V

    .line 1600
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1602
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 1604
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 1602
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/d/c;)V
    .locals 8

    .prologue
    .line 2053
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2055
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2056
    iget-object v0, p1, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    .line 2057
    iget-object v1, p1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    .line 2058
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    .line 2059
    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v3

    .line 2061
    invoke-direct {p0, v0, v3, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 2083
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 2084
    :goto_0
    return-void

    .line 2065
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2066
    if-eqz v2, :cond_1

    .line 2067
    invoke-direct {p0, v2}, Lcom/google/android/gms/fitness/n/az;->b(Lcom/google/android/gms/fitness/data/DataType;)J

    move-result-wide v6

    .line 2068
    const-string v2, "data_type_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2070
    :cond_1
    if-eqz v3, :cond_2

    .line 2071
    invoke-direct {p0, v3}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v2

    .line 2072
    const-string v5, "data_source_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2074
    :cond_2
    const-string v2, "app_package"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    const-string v0, "sampling_delay"

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2076
    const-string v0, "accuracy_mode"

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/data/Subscription;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2077
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2078
    const-string v0, "realm"

    iget-object v1, p1, Lcom/google/android/gms/fitness/d/c;->c:Lcom/google/android/gms/fitness/d/e;

    invoke-virtual {v1}, Lcom/google/android/gms/fitness/d/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2080
    const-string v0, "Subscriptions"

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2081
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2083
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/d/f;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 2497
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2499
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2501
    iget-object v0, p1, Lcom/google/android/gms/fitness/d/f;->a:Lcom/google/android/gms/fitness/data/DataSource;

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v0

    .line 2502
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->h(J)J

    move-result-wide v2

    .line 2504
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2505
    const-string v5, "data_source_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2506
    const-string v0, "is_remote"

    iget-boolean v1, p1, Lcom/google/android/gms/fitness/d/f;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2507
    iget-wide v0, p1, Lcom/google/android/gms/fitness/d/f;->c:J

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 2508
    const-string v0, "last_synced_time"

    iget-wide v6, p1, Lcom/google/android/gms/fitness/d/f;->c:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2512
    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/fitness/d/f;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2513
    const-string v0, "sync_token"

    iget-object v1, p1, Lcom/google/android/gms/fitness/d/f;->e:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    :cond_1
    iget-wide v0, p1, Lcom/google/android/gms/fitness/d/f;->d:J

    cmp-long v0, v0, v8

    if-ltz v0, :cond_2

    .line 2516
    const-string v0, "min_local_timestamp"

    iget-wide v6, p1, Lcom/google/android/gms/fitness/d/f;->d:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2520
    :cond_2
    invoke-direct {p0, v2, v3, v4}, Lcom/google/android/gms/fitness/n/az;->a(JLandroid/content/ContentValues;)V

    .line 2523
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2525
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 2526
    return-void

    .line 2525
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/DataSet;Lcom/google/android/gms/fitness/data/Application;Z)V
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1066
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/DataSet;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/util/List;Lcom/google/android/gms/fitness/data/Application;Z)Ljava/util/Set;

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/n/as;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2791
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "DataUpdateListener already set: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2793
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2794
    return-void

    :cond_0
    move v0, v2

    .line 2791
    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/n/au;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2798
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "DataUpdateListener already set: %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2800
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->m:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2801
    return-void

    :cond_0
    move v0, v2

    .line 2798
    goto :goto_0
.end method

.method public final a(Ljava/util/Set;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    .line 1491
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1518
    :goto_0
    return-void

    .line 1494
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1495
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1497
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1499
    const-string v1, "UPDATE %s set %s = %s + 1, %s = %s where %s in (%s)"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ChangeLog"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "sync_tries"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "sync_tries"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "last_sync_ms"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x5

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x6

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p0, v1, v4}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 1510
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1511
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    move v1, v2

    .line 1512
    goto :goto_1

    .line 1513
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1515
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Session;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2288
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2290
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2291
    const-string v2, "%s = ? AND %s = ? AND %s = ? AND %s = ?"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "app_package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "start_time"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "end_time"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2297
    const-string v3, "Sessions"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v2, v4}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2307
    if-lez v2, :cond_0

    .line 2308
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/fitness/n/az;->j(J)V

    .line 2309
    if-eqz p2, :cond_0

    .line 2310
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/Session;Z)V

    .line 2313
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 2314
    const-string v3, "#Sessions deleted: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2315
    if-lez v2, :cond_1

    .line 2317
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0

    :cond_1
    move v0, v1

    .line 2315
    goto :goto_0

    .line 2317
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final b(J)I
    .locals 5

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1525
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1527
    const-string v0, "%s <= ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1531
    const-string v1, "ChangeLog"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1539
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1540
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/DataSource;)I
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 1071
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1073
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1074
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v8

    .line 1075
    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    move v0, v6

    .line 1092
    :goto_0
    return v0

    .line 1079
    :cond_0
    :try_start_1
    const-string v1, "DataPointRows"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "COUNT(*)"

    aput-object v3, v2, v0

    const-string v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "data_source_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1085
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1086
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1089
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1092
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    :cond_1
    move v0, v6

    .line 1085
    goto :goto_1

    .line 1089
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1092
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final b(Ljava/util/Collection;)J
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 1189
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 1191
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1192
    new-instance v4, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1193
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/DataSource;

    .line 1194
    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/DataSource;->h()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1195
    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1219
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 1199
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 1200
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    move-wide v0, v8

    .line 1219
    :goto_1
    return-wide v0

    .line 1203
    :cond_2
    :try_start_2
    const-string v1, "DataPointRows"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "end_time"

    aput-object v3, v2, v0

    const-string v0, "%s IN (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "data_source_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const-string v0, "%s DESC"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "end_time"

    aput-object v7, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 1212
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 1213
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1216
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_1

    :cond_3
    move-wide v0, v8

    .line 1212
    goto :goto_2

    .line 1216
    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final b(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 749
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 750
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "package"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 751
    sget-object v1, Lcom/google/android/gms/fitness/n/az;->k:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/support/v4/f/g;)Ljava/util/List;

    move-result-object v0

    .line 755
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/fitness/data/Session;Z)V
    .locals 4

    .prologue
    .line 2241
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2243
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2244
    invoke-static {p1}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/Session;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2245
    const-string v1, "Sessions"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2246
    if-eqz p2, :cond_0

    .line 2247
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/Session;Z)V

    .line 2249
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->j(J)V

    .line 2250
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2252
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 2253
    return-void

    .line 2252
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final b(Lcom/google/android/gms/fitness/d/c;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2127
    iget-object v2, p1, Lcom/google/android/gms/fitness/d/c;->b:Lcom/google/android/gms/fitness/data/Subscription;

    .line 2128
    iget-object v3, p1, Lcom/google/android/gms/fitness/d/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->a()Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/fitness/data/Subscription;->b()Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v2

    invoke-direct {p0, v3, v4, v2}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)I

    move-result v2

    .line 2130
    if-le v2, v0, :cond_0

    .line 2131
    const-string v3, "Expected to remove 1 app subscription for %s. Removed %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Lcom/google/android/gms/fitness/o/a;->f(Ljava/lang/String;[Ljava/lang/Object;)I

    .line 2135
    :cond_0
    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final c(Ljava/util/Collection;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1461
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1484
    :goto_0
    return v0

    .line 1465
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 1467
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1468
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 1469
    goto :goto_1

    .line 1471
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 1473
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 1474
    const-string v0, "ChangeLog"

    const-string v1, "%s IN (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/fitness/n/az;->a(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1481
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final c(Lcom/google/android/gms/fitness/data/DataSource;)Lcom/google/android/gms/fitness/d/f;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2455
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 2457
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2459
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->e(Lcom/google/android/gms/fitness/data/DataSource;)J

    move-result-wide v8

    .line 2460
    const-string v1, "SyncStatus"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "is_remote"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "last_synced_time"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "min_local_timestamp"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "sync_token"

    aput-object v3, v2, v0

    const-string v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "data_source_id"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 2474
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2475
    new-instance v1, Lcom/google/android/gms/fitness/d/f;

    const-string v0, "is_remote"

    invoke-static {v9, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    move v3, v6

    :goto_0
    const-string v0, "last_synced_time"

    invoke-static {v9, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "min_local_timestamp"

    invoke-static {v9, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v6

    const-string v0, "sync_token"

    invoke-static {v9, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/fitness/d/f;-><init>(Lcom/google/android/gms/fitness/data/DataSource;ZJJLjava/lang/String;)V

    .line 2481
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2488
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2491
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    :goto_1
    return-object v1

    :cond_0
    move v3, v7

    .line 2475
    goto :goto_0

    .line 2484
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2485
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2491
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    const/4 v1, 0x0

    goto :goto_1

    .line 2488
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2491
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final c(Ljava/lang/String;)Ljava/util/Set;
    .locals 3

    .prologue
    .line 851
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 852
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 854
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 855
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/az;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 856
    invoke-direct {p0, v0}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v0

    .line 857
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 865
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 862
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v1
.end method

.method public final c(J)V
    .locals 7

    .prologue
    .line 2805
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->g:Landroid/content/Context;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v2, "fitness"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "cache_start_time"

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2806
    return-void
.end method

.method public final c(Lcom/google/android/gms/fitness/data/Session;Z)V
    .locals 8

    .prologue
    .line 2259
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2261
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2262
    invoke-static {p1}, Lcom/google/android/gms/fitness/n/az;->a(Lcom/google/android/gms/fitness/data/Session;)Landroid/content/ContentValues;

    move-result-object v0

    .line 2263
    const-string v1, "Sessions"

    const-string v2, "%s = ? AND %s = ? AND %s = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "app_package"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "start_time"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2273
    if-lez v0, :cond_0

    .line 2274
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/fitness/n/az;->j(J)V

    .line 2275
    if-eqz p2, :cond_0

    .line 2276
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Lcom/google/android/gms/fitness/data/Session;Z)V

    .line 2279
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    .line 2282
    return-void

    .line 2281
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final d(Ljava/lang/String;)I
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2141
    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Lcom/google/android/gms/fitness/data/DataSource;Lcom/google/android/gms/fitness/data/DataType;)I

    move-result v0

    return v0
.end method

.method public final d_()Ljava/util/List;
    .locals 3

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 766
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 767
    sget-object v0, Lcom/google/android/gms/fitness/n/az;->j:Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/support/v4/f/g;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/n/az;->a(Landroid/support/v4/f/g;)Ljava/util/List;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 772
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 12

    .prologue
    const/4 v6, 0x2

    .line 2180
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->b()V

    .line 2182
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2185
    sget-object v3, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    .line 2186
    sget-object v4, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    .line 2187
    if-eqz p1, :cond_0

    .line 2188
    const-string v0, "%s = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "app_package"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2189
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 2192
    :cond_0
    const-string v1, "Subscriptions"

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "app_package"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    const-string v5, "sampling_delay"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "data_type_id"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    const-string v5, "data_source_id"

    aput-object v5, v2, v0

    const/4 v0, 0x4

    const-string v5, "accuracy_mode"

    aput-object v5, v2, v0

    const/4 v0, 0x5

    const-string v5, "realm"

    aput-object v5, v2, v0

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2208
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2209
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    const-string v0, "data_type_id"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v4

    .line 2211
    const-string v0, "data_source_id"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v8

    .line 2212
    const-string v0, "app_package"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2213
    const-string v0, "sampling_delay"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    .line 2214
    const-string v0, "accuracy_mode"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    .line 2216
    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/fitness/n/az;->d(J)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v4

    .line 2217
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/Long;)Lcom/google/android/gms/fitness/data/DataSource;

    move-result-object v5

    .line 2218
    new-instance v7, Lcom/google/android/gms/fitness/data/x;

    invoke-direct {v7}, Lcom/google/android/gms/fitness/data/x;-><init>()V

    iput-object v5, v7, Lcom/google/android/gms/fitness/data/x;->a:Lcom/google/android/gms/fitness/data/DataSource;

    iput-object v4, v7, Lcom/google/android/gms/fitness/data/x;->b:Lcom/google/android/gms/fitness/data/DataType;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    iput-wide v4, v7, Lcom/google/android/gms/fitness/data/x;->c:J

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v6

    :pswitch_1
    iput v0, v7, Lcom/google/android/gms/fitness/data/x;->d:I

    invoke-virtual {v7}, Lcom/google/android/gms/fitness/data/x;->a()Lcom/google/android/gms/fitness/data/Subscription;

    move-result-object v0

    .line 2224
    const-string v4, "realm"

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/n/az;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/gms/fitness/d/e;->a(I)Lcom/google/android/gms/fitness/d/e;

    move-result-object v4

    .line 2226
    new-instance v5, Lcom/google/android/gms/fitness/d/c;

    invoke-direct {v5, v3, v0, v4}, Lcom/google/android/gms/fitness/d/c;-><init>(Ljava/lang/String;Lcom/google/android/gms/fitness/data/Subscription;Lcom/google/android/gms/fitness/d/e;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2231
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2234
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0

    .line 2228
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2231
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2234
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v2

    .line 2218
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final e_()Ljava/util/List;
    .locals 14

    .prologue
    const/4 v6, 0x0

    .line 2642
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2644
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2646
    const-string v1, "BleDevices"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "address"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "name"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "type"

    aput-object v3, v2, v0

    sget-object v3, Lcom/google/android/gms/fitness/n/az;->b:Ljava/lang/String;

    sget-object v4, Lcom/google/android/gms/fitness/n/az;->c:[Ljava/lang/String;

    const-string v5, "address"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 2660
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2661
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    .line 2663
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2664
    const-string v1, "_id"

    invoke-static {v5, v1}, Lcom/google/android/gms/fitness/n/az;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v10

    .line 2665
    const-string v1, "address"

    invoke-static {v5, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2666
    const-string v1, "name"

    invoke-static {v5, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2667
    const-string v1, "type"

    invoke-static {v5, v1}, Lcom/google/android/gms/fitness/n/az;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2668
    invoke-direct {p0, v10, v11}, Lcom/google/android/gms/fitness/n/az;->i(J)Ljava/util/List;

    move-result-object v1

    .line 2671
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2672
    invoke-static {v7}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v10

    .line 2673
    invoke-static {v10}, Lcom/google/android/gms/fitness/d/a/c;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v11

    .line 2675
    new-instance v12, Lcom/google/android/gms/fitness/internal/ble/b;

    new-instance v13, Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {v13, v6, v2, v10, v11}, Lcom/google/android/gms/fitness/data/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v12, v13, v0}, Lcom/google/android/gms/fitness/internal/ble/b;-><init>(Lcom/google/android/gms/fitness/data/BleDevice;Ljava/util/List;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2680
    :cond_0
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    move-object v2, v3

    move-object v6, v4

    .line 2684
    goto :goto_0

    .line 2686
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2687
    invoke-static {v7}, Lcom/google/android/gms/fitness/n/az;->b(Ljava/util/List;)Ljava/util/Set;

    move-result-object v1

    .line 2688
    invoke-static {v1}, Lcom/google/android/gms/fitness/d/a/c;->b(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 2690
    new-instance v4, Lcom/google/android/gms/fitness/internal/ble/b;

    new-instance v7, Lcom/google/android/gms/fitness/data/BleDevice;

    invoke-direct {v7, v6, v2, v1, v3}, Lcom/google/android/gms/fitness/data/BleDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    invoke-direct {v4, v7, v0}, Lcom/google/android/gms/fitness/internal/ble/b;-><init>(Lcom/google/android/gms/fitness/data/BleDevice;Ljava/util/List;)V

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2697
    :cond_2
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2698
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2701
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return-object v8

    .line 2697
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2698
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2701
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->n:Lcom/google/android/gms/fitness/n/f;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/f;->b()V

    .line 2786
    invoke-super {p0}, Lcom/google/android/gms/fitness/n/a;->f()Z

    move-result v0

    return v0
.end method

.method public final f(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2622
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2624
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2626
    const-string v0, "BleDevices"

    const-string v3, "%s = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "address"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2629
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 2630
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/az;->l:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/n/as;

    .line 2631
    if-eqz v0, :cond_0

    .line 2632
    invoke-interface {v0, p1}, Lcom/google/android/gms/fitness/n/as;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2634
    :cond_0
    if-lez v3, :cond_1

    move v0, v1

    .line 2636
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v0

    :cond_1
    move v0, v2

    .line 2634
    goto :goto_0

    .line 2636
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 2762
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->f_()V

    .line 2764
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->c()V

    .line 2766
    const-string v1, "BleDevices"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "address"

    aput-object v3, v2, v0

    const-string v0, "%s = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "address"

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    sget-object v5, Lcom/google/android/gms/fitness/n/az;->a:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 2773
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 2775
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 2776
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2779
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    return v1

    .line 2775
    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->d()V

    .line 2776
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2779
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/n/az;->e()V

    throw v0
.end method

.method public final bridge synthetic h()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Lcom/google/android/gms/fitness/n/a;->h()V

    return-void
.end method
