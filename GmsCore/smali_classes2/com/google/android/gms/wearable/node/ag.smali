.class public interface abstract Lcom/google/android/gms/wearable/node/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 172
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "assetname"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "dataitems_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "assets_digest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/wearable/node/ag;->a:[Ljava/lang/String;

    return-void
.end method