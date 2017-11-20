.class final Lcom/google/android/gms/auth/be/proximity/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const-string v0, ","

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/f;->a:Ljava/lang/String;

    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "id"

    aput-object v1, v0, v3

    const-string v1, "account_id"

    aput-object v1, v0, v4

    const-string v1, "type"

    aput-object v1, v0, v5

    const-string v1, "license__id"

    aput-object v1, v0, v6

    const-string v1, "license__type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "license__data"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allowed_channels"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/f;->b:[Ljava/lang/String;

    .line 27
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "TEXT PRIMARY KEY NOT NULL"

    aput-object v1, v0, v3

    const-string v1, "TEXT"

    aput-object v1, v0, v4

    const-string v1, "TEXT"

    aput-object v1, v0, v5

    const-string v1, "TEXT"

    aput-object v1, v0, v6

    const-string v1, "TEXT"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "BLOB"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "TEXT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/f;->c:[Ljava/lang/String;

    .line 33
    new-array v0, v5, [[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "id"

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "account_id"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/auth/be/proximity/b/f;->d:[[Ljava/lang/String;

    return-void
.end method
