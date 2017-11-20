.class final Lcom/google/android/location/collectionlib/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/bz;

.field final synthetic b:Lcom/google/android/location/collectionlib/ak;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ak;Lcom/google/android/location/collectionlib/bz;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/location/collectionlib/am;->b:Lcom/google/android/location/collectionlib/ak;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/am;->a:Lcom/google/android/location/collectionlib/bz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/location/collectionlib/am;->a:Lcom/google/android/location/collectionlib/bz;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/google/android/location/collectionlib/am;->a:Lcom/google/android/location/collectionlib/bz;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bz;->d()V

    .line 66
    :cond_0
    return-void
.end method
