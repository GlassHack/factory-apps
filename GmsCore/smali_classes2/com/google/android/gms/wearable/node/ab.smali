.class public final Lcom/google/android/gms/wearable/node/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:I

.field public static c:I

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 850
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "dataitems_id"

    aput-object v1, v0, v2

    const-string v1, "nowReady"

    aput-object v1, v0, v3

    const-string v1, "markedReady"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/wearable/node/ab;->a:[Ljava/lang/String;

    .line 856
    sput v2, Lcom/google/android/gms/wearable/node/ab;->b:I

    .line 857
    sput v3, Lcom/google/android/gms/wearable/node/ab;->c:I

    .line 858
    sput v4, Lcom/google/android/gms/wearable/node/ab;->d:I

    return-void
.end method
