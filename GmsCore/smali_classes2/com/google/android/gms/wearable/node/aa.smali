.class public final Lcom/google/android/gms/wearable/node/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 807
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "appkeys_id"

    aput-object v1, v0, v2

    const-string v1, "assets_digest"

    aput-object v1, v0, v3

    const-string v1, "packageName"

    aput-object v1, v0, v4

    const-string v1, "signatureDigest"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gms/wearable/node/aa;->a:[Ljava/lang/String;

    .line 814
    sput v2, Lcom/google/android/gms/wearable/node/aa;->b:I

    .line 815
    sput v3, Lcom/google/android/gms/wearable/node/aa;->c:I

    .line 816
    sput v4, Lcom/google/android/gms/wearable/node/aa;->d:I

    .line 817
    sput v5, Lcom/google/android/gms/wearable/node/aa;->e:I

    return-void
.end method
