.class final Lcom/google/android/gms/fitness/n/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/n/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/fitness/n/az;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/fitness/n/az;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/android/gms/fitness/n/bd;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/n/az;B)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/n/bd;-><init>(Lcom/google/android/gms/fitness/n/az;)V

    return-void
.end method

.method private b(J)Ljava/util/Map;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 317
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bd;->a:Lcom/google/android/gms/fitness/n/az;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/n/az;->g()V

    .line 319
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/fitness/n/bd;->a:Lcom/google/android/gms/fitness/n/az;

    const-string v1, "DataTypeFields"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "field_name"

    aput-object v3, v2, v7

    const-string v3, "_id"

    aput-object v3, v2, v8

    const-string v3, "%s = ?"

    new-array v4, v8, [Ljava/lang/Object;

    const-string v5, "data_type_id"

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    sget-object v5, Lcom/google/android/gms/fitness/n/a;->a:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/fitness/n/az;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 332
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    const-string v0, "field_name"

    invoke-static {v1, v0}, Lcom/google/android/gms/fitness/n/a;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "_id"

    invoke-static {v1, v2}, Lcom/google/android/gms/fitness/n/a;->c(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v6, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 338
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 340
    return-object v6
.end method


# virtual methods
.method public final synthetic a(J)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/fitness/n/bd;->b(J)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
