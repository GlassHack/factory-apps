.class interface abstract Lcom/google/android/gms/fitness/n/y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 348
    const-string v0, "CREATE TABLE %s (%s, %s, %s, %s, %s, %s, %s, %s);"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Sessions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "app_package TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "start_time INTEGER NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "end_time INTEGER NOT NULL DEFAULT 0"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "name TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "identifier TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "description TEXT"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "activity INTEGER NOT NULL"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/y;->a:Ljava/lang/String;

    return-void
.end method
