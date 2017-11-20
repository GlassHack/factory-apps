.class interface abstract Lcom/google/android/gms/fitness/n/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 445
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChangeLog"

    aput-object v2, v1, v4

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    const-string v2, "timestamp INTEGER NOT NULL"

    aput-object v2, v1, v6

    const-string v2, "is_delete INTEGER NOT NULL"

    aput-object v2, v1, v7

    const-string v2, "source_table TEXT NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "content BLOB NOT NULL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/n;->a:Ljava/lang/String;

    .line 454
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s, %s, %s);"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ChangeLog"

    aput-object v2, v1, v4

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    const-string v2, "timestamp INTEGER NOT NULL"

    aput-object v2, v1, v6

    const-string v2, "is_delete INTEGER NOT NULL"

    aput-object v2, v1, v7

    const-string v2, "source_table TEXT NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "content BLOB NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "sync_tries INTEGER DEFAULT 0"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "last_sync_ms INTEGER DEFAULT 0"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/n;->b:Ljava/lang/String;

    .line 466
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 0"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ChangeLog"

    aput-object v2, v1, v4

    const-string v2, "sync_tries"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/n;->c:Ljava/lang/String;

    .line 469
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 0"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "ChangeLog"

    aput-object v2, v1, v4

    const-string v2, "last_sync_ms"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/n;->d:Ljava/lang/String;

    return-void
.end method
