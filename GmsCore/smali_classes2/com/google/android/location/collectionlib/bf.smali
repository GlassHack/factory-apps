.class final Lcom/google/android/location/collectionlib/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field volatile b:Landroid/util/Pair;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/location/collectionlib/bf;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method
