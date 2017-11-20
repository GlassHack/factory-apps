.class public final Lcom/google/android/gms/wearable/node/bluetooth/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "5e8945b0-9525-11e3-a5e2-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/wearable/node/bluetooth/d;->a:Ljava/util/UUID;

    return-void
.end method
