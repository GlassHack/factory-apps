.class final Lcom/google/android/location/collectionlib/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/g/a/b/b/a;

.field final synthetic c:Lcom/google/android/location/collectionlib/p;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/p;ILcom/google/g/a/b/b/a;)V
    .locals 0

    .prologue
    .line 1062
    iput-object p1, p0, Lcom/google/android/location/collectionlib/r;->c:Lcom/google/android/location/collectionlib/p;

    iput p2, p0, Lcom/google/android/location/collectionlib/r;->a:I

    iput-object p3, p0, Lcom/google/android/location/collectionlib/r;->b:Lcom/google/g/a/b/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/google/android/location/collectionlib/r;->c:Lcom/google/android/location/collectionlib/p;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    iget v1, p0, Lcom/google/android/location/collectionlib/r;->a:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/r;->b:Lcom/google/g/a/b/b/a;

    invoke-interface {v0}, Lcom/google/android/location/collectionlib/ab;->c()V

    .line 1066
    return-void
.end method
