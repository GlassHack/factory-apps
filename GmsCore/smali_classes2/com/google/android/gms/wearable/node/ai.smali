.class public interface abstract Lcom/google/android/gms/wearable/node/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 87
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appkeys_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "host"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "path"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "seqId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "deleted"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sourceNode"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "data"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "timestampMs"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "assetsPresent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/wearable/node/ai;->a:[Ljava/lang/String;

    return-void
.end method
