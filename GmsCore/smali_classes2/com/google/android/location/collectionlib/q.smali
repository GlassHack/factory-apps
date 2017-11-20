.class final Lcom/google/android/location/collectionlib/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/collectionlib/p;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/p;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/google/android/location/collectionlib/q;->c:Lcom/google/android/location/collectionlib/p;

    iput p2, p0, Lcom/google/android/location/collectionlib/q;->a:I

    iput-object p3, p0, Lcom/google/android/location/collectionlib/q;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/google/android/location/collectionlib/q;->c:Lcom/google/android/location/collectionlib/p;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    iget v1, p0, Lcom/google/android/location/collectionlib/q;->a:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/q;->b:Ljava/lang/String;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ab;->b()V

    .line 1052
    return-void
.end method
