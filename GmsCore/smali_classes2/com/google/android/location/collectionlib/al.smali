.class final Lcom/google/android/location/collectionlib/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/ak;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ak;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ak;->a(Lcom/google/android/location/collectionlib/ak;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ak;->b(Lcom/google/android/location/collectionlib/ak;)Lcom/google/android/location/collectionlib/bv;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/bv;->a()V

    .line 45
    iget-object v0, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ak;->d(Lcom/google/android/location/collectionlib/ak;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v1}, Lcom/google/android/location/collectionlib/ak;->c(Lcom/google/android/location/collectionlib/ak;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/collectionlib/al;->a:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ak;->e(Lcom/google/android/location/collectionlib/ak;)Z

    .line 48
    return-void
.end method
