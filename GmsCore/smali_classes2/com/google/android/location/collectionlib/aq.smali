.class public final Lcom/google/android/location/collectionlib/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/collectionlib/aq;->a:J

    return-void
.end method
