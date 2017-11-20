.class interface abstract Lcom/google/android/gms/fitness/n/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const-string v0, "CREATE TABLE %s (%s, %s);"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DataTypes"

    aput-object v2, v1, v3

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v4

    const-string v2, "name TEXT NOT NULL"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/v;->a:Ljava/lang/String;

    .line 37
    const-string v0, "CREATE INDEX DataTypeNames ON %s(%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "DataTypes"

    aput-object v2, v1, v3

    const-string v2, "name"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/v;->b:Ljava/lang/String;

    return-void
.end method
