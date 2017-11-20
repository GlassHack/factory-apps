.class interface abstract Lcom/google/android/gms/fitness/n/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 416
    const-string v0, "CREATE VIEW %s AS SELECT * FROM %s AS v JOIN %s AS f ON v.%s = f.%s JOIN %s AS p ON p.%s = v.%s JOIN %s AS t ON f.%s = t.%s"

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DataView"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "DataValues"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "DataTypeFields"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "field_id"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "DataPoints"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "data_point_id"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "DataTypes"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "data_type_id"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/w;->a:Ljava/lang/String;

    return-void
.end method
