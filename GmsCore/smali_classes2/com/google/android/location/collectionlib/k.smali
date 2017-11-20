.class final Lcom/google/android/location/collectionlib/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/j;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/j;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/location/collectionlib/k;->a:Lcom/google/android/location/collectionlib/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/google/android/location/collectionlib/k;->a:Lcom/google/android/location/collectionlib/j;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/j;->a:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->d(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/collectionlib/ab;

    move-result-object v0

    new-instance v1, Lcom/google/android/location/collectionlib/da;

    invoke-direct {v1}, Lcom/google/android/location/collectionlib/da;-><init>()V

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ab;->a(Lcom/google/android/location/collectionlib/da;)V

    .line 244
    return-void
.end method
