.class interface abstract Lcom/google/android/gms/fitness/n/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 162
    const-string v0, "CREATE TABLE %s(%s, %s, %s, %s);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Applications"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "_id INTEGER PRIMARY KEY AUTOINCREMENT"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "package TEXT NOT NULL"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "version TEXT"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "details_url TEXT"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/n/m;->a:Ljava/lang/String;

    return-void
.end method
