.class final Lcom/google/android/location/collectionlib/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/location/collectionlib/da;

.field final synthetic d:Lcom/google/android/location/collectionlib/p;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/p;ILjava/lang/String;Lcom/google/android/location/collectionlib/da;)V
    .locals 0

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/google/android/location/collectionlib/s;->d:Lcom/google/android/location/collectionlib/p;

    iput p2, p0, Lcom/google/android/location/collectionlib/s;->a:I

    iput-object p3, p0, Lcom/google/android/location/collectionlib/s;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/location/collectionlib/s;->c:Lcom/google/android/location/collectionlib/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/google/android/location/collectionlib/s;->d:Lcom/google/android/location/collectionlib/p;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    iget v1, p0, Lcom/google/android/location/collectionlib/s;->a:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/s;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/location/collectionlib/s;->c:Lcom/google/android/location/collectionlib/da;

    invoke-interface {v0, v1, v2}, Lcom/google/android/location/collectionlib/ab;->a(Ljava/lang/String;Lcom/google/android/location/collectionlib/da;)V

    .line 1100
    return-void
.end method
