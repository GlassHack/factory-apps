.class interface abstract Lcom/google/android/gms/fitness/n/ab;
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

    .line 283
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataValues"

    aput-object v2, v1, v5

    const-string v2, "%s INTEGER NOT NULL REFERENCES %s(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "field_id"

    aput-object v4, v3, v5

    const-string v4, "DataTypeFields"

    aput-object v4, v3, v6

    const-string v4, "_id"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "%s INTEGER NOT NULL REFERENCES %s(%s)"

    new-array v3, v8, [Ljava/lang/Object;

    const-string v4, "data_point_id"

    aput-object v4, v3, v5

    const-string v4, "DataPoints"

    aput-object v4, v3, v6

    const-string v4, "_id"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "int_value INT"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "float_value FLOAT"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/ab;->a:Ljava/lang/String;

    .line 293
    const-string v0, "CREATE INDEX ValueDataPointIds ON %s(%s)"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "DataValues"

    aput-object v2, v1, v5

    const-string v2, "data_point_id"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/ab;->b:Ljava/lang/String;

    .line 295
    const-string v0, "CREATE INDEX ValueFieldIds ON %s(%s)"

    new-array v1, v7, [Ljava/lang/Object;

    const-string v2, "DataValues"

    aput-object v2, v1, v5

    const-string v2, "field_id"

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/ab;->c:Ljava/lang/String;

    return-void
.end method
