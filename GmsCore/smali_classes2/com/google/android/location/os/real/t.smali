.class final Lcom/google/android/location/os/real/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/collectionlib/cj;

.field final synthetic b:Lcom/google/android/location/os/real/b;


# direct methods
.method constructor <init>(Lcom/google/android/location/os/real/b;Lcom/google/android/location/collectionlib/cj;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/google/android/location/os/real/t;->b:Lcom/google/android/location/os/real/b;

    iput-object p2, p0, Lcom/google/android/location/os/real/t;->a:Lcom/google/android/location/collectionlib/cj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/location/os/real/t;->b:Lcom/google/android/location/os/real/b;

    iget-object v0, v0, Lcom/google/android/location/os/real/b;->a:Lcom/google/android/location/collectionlib/ao;

    iget-object v1, p0, Lcom/google/android/location/os/real/t;->a:Lcom/google/android/location/collectionlib/cj;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ao;->a(Lcom/google/android/location/collectionlib/cj;)V

    .line 113
    return-void
.end method
