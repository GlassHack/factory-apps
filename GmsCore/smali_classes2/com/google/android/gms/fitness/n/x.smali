.class interface abstract Lcom/google/android/gms/fitness/n/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 184
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s, %s);"

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Devices"

    aput-object v2, v1, v4

    const-string v2, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v2, v1, v5

    const-string v2, "make TEXT NOT NULL"

    aput-object v2, v1, v6

    const/4 v2, 0x3

    const-string v3, "model TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "version TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "type INTEGER"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "uid TEXT"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/x;->a:Ljava/lang/String;

    .line 193
    const-string v0, "CREATE INDEX DeviceUids ON %s(%s)"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "Devices"

    aput-object v2, v1, v4

    const-string v2, "uid"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/x;->b:Ljava/lang/String;

    return-void
.end method
