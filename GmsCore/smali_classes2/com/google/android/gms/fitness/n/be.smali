.class final Lcom/google/android/gms/fitness/n/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/be;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/n/az;B)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/be;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    return-void
.end method

.method private b(J)Lcom/google/android/gms/fitness/data/DataType;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 273
    const-string v0, "DT.%s"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "_id"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/be;->a:Lcom/google/android/gms/fitness/n/az;

    const-string v1, "%s DT JOIN %s F ON (%s = F.%s)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "DataTypes"

    aput-object v4, v2, v6

    const-string v4, "DataTypeFields"

    aput-object v4, v2, v7

    aput-object v3, v2, v5

    const-string v4, "data_type_id"

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v6

    const-string v4, "field_name"

    aput-object v4, v2, v7

    const-string v4, "format"

    aput-object v4, v2, v5

    const-string v4, "%s = ?"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/android/gms/fitness/n/a;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 289
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    const-string v2, "Couldn\'t find data type with ID %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 293
    const-string v2, "name"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/a;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    :cond_0
    const-string v3, "field_name"

    invoke-static {v1, v3}, Lcom/google/android/gms/fitness/n/a;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 296
    const-string v4, "format"

    invoke-static {v1, v4}, Lcom/google/android/gms/fitness/n/a;->b(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    .line 297
    new-instance v5, Lcom/google/android/gms/fitness/data/Field;

    invoke-direct {v5, v3, v4}, Lcom/google/android/gms/fitness/data/Field;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    new-instance v3, Lcom/google/android/gms/fitness/data/DataType;

    invoke-direct {v3, v2, v0}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public final synthetic a(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/n/be;->b(J)Lcom/google/android/gms/fitness/data/DataType;

    move-result-object v0

    return-object v0
.end method
