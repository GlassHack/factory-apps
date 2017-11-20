.class final Lcom/google/android/location/collectionlib/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/g;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/g;)V
    .locals 0

    .prologue
    .line 10
    iput-object p1, p0, Lcom/google/android/location/collectionlib/h;->a:Lcom/google/android/location/collectionlib/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/google/android/location/collectionlib/h;->a:Lcom/google/android/location/collectionlib/g;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/g;->b:Lcom/google/android/location/collectionlib/bz;

    invoke-virtual {v0}, Lcom/google/android/location/collectionlib/bz;->d()V

    .line 14
    return-void
.end method
