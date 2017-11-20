.class final Lcom/google/android/location/collectionlib/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/location/collectionlib/da;

.field final synthetic c:Lcom/google/android/location/collectionlib/p;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/p;Ljava/lang/String;Lcom/google/android/location/collectionlib/da;)V
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/google/android/location/collectionlib/t;->c:Lcom/google/android/location/collectionlib/p;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/location/collectionlib/t;->b:Lcom/google/android/location/collectionlib/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/google/android/location/collectionlib/t;->c:Lcom/google/android/location/collectionlib/p;

    iget-object v0, v0, Lcom/google/android/location/collectionlib/p;->a:Lcom/google/android/location/collectionlib/ab;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/t;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/t;->b:Lcom/google/android/location/collectionlib/da;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ab;->a(Lcom/google/android/location/collectionlib/da;)V

    .line 1137
    return-void
.end method
