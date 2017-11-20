.class public final Lcom/google/android/location/reporting/g;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/location/reporting/e;


# direct methods
.method public constructor <init>(Lcom/google/android/location/reporting/e;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 553
    iput-object p1, p0, Lcom/google/android/location/reporting/g;->a:Lcom/google/android/location/reporting/e;

    .line 554
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "gcore_ulr_%s.db"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 556
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 585
    iget-object v0, p0, Lcom/google/android/location/reporting/g;->a:Lcom/google/android/location/reporting/e;

    invoke-static {v0}, Lcom/google/android/location/reporting/e;->b(Lcom/google/android/location/reporting/e;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/location/reporting/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 586
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "DROP TABLE IF EXISTS %s;"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/location/reporting/g;->a:Lcom/google/android/location/reporting/e;

    invoke-static {v3}, Lcom/google/android/location/reporting/e;->b(Lcom/google/android/location/reporting/e;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    const-string v0, "ApiRate"

    invoke-static {p1, v0}, Lcom/google/android/location/reporting/g;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 589
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "DROP TABLE IF EXISTS %s;"

    new-array v2, v5, [Ljava/lang/Object;

    const-string v3, "ApiRate"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0, p1}, Lcom/google/android/location/reporting/g;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 591
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 603
    :try_start_0
    invoke-static {p0, p1}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 606
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 607
    invoke-static {p1, v0, v1}, Lcom/google/android/location/reporting/b/j;->a(Ljava/lang/String;J)V

    .line 608
    const-string v2, "GCoreUlr"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    const-string v2, "GCoreUlr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DB recreate dropping: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rows from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 616
    const-string v1, "GCoreUlr"

    invoke-static {v1, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    const-string v1, "GCoreUlr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DB recreate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/location/reporting/g;->a:Lcom/google/android/location/reporting/e;

    invoke-static {v0}, Lcom/google/android/location/reporting/e;->a(Lcom/google/android/location/reporting/e;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 573
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recreating DB after downgrade: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 577
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 565
    const-string v0, "GCoreUlr"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    const-string v0, "GCoreUlr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Recreating DB after upgrade: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/location/reporting/g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 569
    return-void
.end method
