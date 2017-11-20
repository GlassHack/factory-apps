.class interface abstract Lcom/google/android/gms/fitness/n/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 53
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataTypeFields"

    aput-object v2, v1, v6

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v7

    const-string v2, "field_name TEXT NOT NULL"

    aput-object v2, v1, v8

    const-string v2, "format INTEGER NOT NULL"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v3, "%s INTEGER NOT NULL REFERENCES %s(%s)"

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "data_type_id"

    aput-object v5, v4, v6

    const-string v5, "DataTypes"

    aput-object v5, v4, v7

    const-string v5, "_id"

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/u;->a:Ljava/lang/String;

    .line 61
    const-string v0, "CREATE INDEX FieldDataTypeIds ON %s(%s)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "DataTypeFields"

    aput-object v2, v1, v6

    const-string v2, "data_type_id"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/u;->b:Ljava/lang/String;

    return-void
.end method
