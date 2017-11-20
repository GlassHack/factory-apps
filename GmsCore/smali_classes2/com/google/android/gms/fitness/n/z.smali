.class interface abstract Lcom/google/android/gms/fitness/n/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 314
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s, %s, %s, %s);"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Subscriptions"

    aput-object v2, v1, v7

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v8

    const-string v2, "app_package TEXT NOT NULL"

    aput-object v2, v1, v6

    const-string v2, "%s INTEGER REFERENCES %s (%s)"

    new-array v3, v9, [Ljava/lang/Object;

    const-string v4, "data_source_id"

    aput-object v4, v3, v7

    const-string v4, "DataSources"

    aput-object v4, v3, v8

    const-string v4, "_id"

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "%s INTEGER REFERENCES %s (%s)"

    new-array v4, v9, [Ljava/lang/Object;

    const-string v5, "data_type_id"

    aput-object v5, v4, v7

    const-string v5, "DataTypes"

    aput-object v5, v4, v8

    const-string v5, "_id"

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "sampling_delay INTEGER NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "accuracy_mode INTEGER NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "timestamp INTEGER NOT NULL"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "realm INTEGER NOT NULL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/z;->a:Ljava/lang/String;

    .line 328
    const-string v0, "ALTER TABLE %s ADD COLUMN %s INTEGER NOT NULL DEFAULT %d"

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "Subscriptions"

    aput-object v2, v1, v7

    const-string v2, "accuracy_mode"

    aput-object v2, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/z;->b:Ljava/lang/String;

    return-void
.end method
