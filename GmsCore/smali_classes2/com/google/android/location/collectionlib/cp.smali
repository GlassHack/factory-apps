.class final Lcom/google/android/location/collectionlib/cp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/co;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/co;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cp;->a:Lcom/google/android/location/collectionlib/co;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cp;->a:Lcom/google/android/location/collectionlib/co;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/co;->f:Lcom/google/android/location/collectionlib/g;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/g;->b:Lcom/google/android/location/collectionlib/bz;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bz;->d()V

    .line 91
    return-void
.end method
