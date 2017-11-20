.class final Lcom/google/android/gms/auth/be/proximity/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 16
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "permit_id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v2

    const-string v1, "type"

    aput-object v1, v0, v4

    const-string v1, "data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/g;->a:[Ljava/lang/String;

    .line 19
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "TEXT"

    aput-object v1, v0, v3

    const-string v1, "TEXT"

    aput-object v1, v0, v2

    const-string v1, "TEXT"

    aput-object v1, v0, v4

    const-string v1, "BLOB"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/g;->b:[Ljava/lang/String;

    .line 22
    new-array v0, v2, [[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "permit_id"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/g;->c:[[Ljava/lang/String;

    return-void
.end method
