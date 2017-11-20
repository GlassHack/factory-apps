.class interface abstract Lcom/google/android/gms/fitness/n/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 82
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s, %s, %s, %s, %s);"

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v6

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v7

    const-string v2, "type INTEGER"

    aput-object v2, v1, v8

    const-string v2, "identifier TEXT"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "version TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "source_name TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "stream_name TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "obfuscated INTEGER DEFAULT 0"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "%s INTEGER REFERENCES %s(%s)"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "device_id"

    aput-object v5, v4, v6

    const-string v5, "Devices"

    aput-object v5, v4, v7

    const-string v5, "_id"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "%s INTEGER REFERENCES %s(%s)"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "application_id"

    aput-object v5, v4, v6

    const-string v5, "Applications"

    aput-object v5, v4, v7

    const-string v5, "_id"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/t;->a:Ljava/lang/String;

    .line 97
    const-string v0, "CREATE INDEX DataSourcesIdentifiers ON %s(%s)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v6

    const-string v2, "identifier"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/t;->b:Ljava/lang/String;

    .line 100
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER DEFAULT 0"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataSources"

    aput-object v2, v1, v6

    const-string v2, "obfuscated"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/t;->c:Ljava/lang/String;

    return-void
.end method
