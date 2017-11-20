.class interface abstract Lcom/google/android/gms/fitness/n/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 252
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s);"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataPointRows"

    aput-object v2, v1, v5

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v6

    const-string v2, "%s INTEGER REFERENCES %s(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "data_source_id"

    aput-object v4, v3, v5

    const-string v4, "DataSources"

    aput-object v4, v3, v6

    const-string v4, "_id"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "start_time INTEGER NOT NULL"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "end_time INTEGER NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "data_point BLOB NOT NULL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/q;->a:Ljava/lang/String;

    .line 262
    const-string v0, "CREATE INDEX DataPointMinTimestamps ON %s(%s, %s)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataPointRows"

    aput-object v2, v1, v5

    const-string v2, "data_source_id"

    aput-object v2, v1, v6

    const-string v2, "start_time"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/q;->b:Ljava/lang/String;

    .line 265
    const-string v0, "CREATE INDEX DataPointMaxTimestamps ON %s(%s, %s)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataPointRows"

    aput-object v2, v1, v5

    const-string v2, "data_source_id"

    aput-object v2, v1, v6

    const-string v2, "end_time"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/q;->c:Ljava/lang/String;

    return-void
.end method
