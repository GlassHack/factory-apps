.class public final Lcom/google/android/location/collectionlib/cx;
.super Lcom/google/android/location/collectionlib/g;
.source "SourceFile"


# instance fields
.field private final d:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;J)V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/google/android/location/collectionlib/g;-><init>(Lcom/google/android/location/collectionlib/bz;Lcom/google/android/location/collectionlib/ak;)V

    .line 15
    iput-wide p3, p0, Lcom/google/android/location/collectionlib/cx;->d:J

    .line 16
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cx;->a:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/cx;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    return-void
.end method

.method public final a(Lcom/google/android/location/collectionlib/cb;J)V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/location/collectionlib/g;->c:Lcom/google/android/location/collectionlib/ak;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cx;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ak;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method
