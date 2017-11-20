.class final Lcom/google/android/location/collectionlib/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/google/android/location/collectionlib/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/i;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/location/collectionlib/l;->b:Lcom/google/android/location/collectionlib/i;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/l;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/location/collectionlib/l;->b:Lcom/google/android/location/collectionlib/i;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/i;->d(Lcom/google/android/location/collectionlib/i;)Lcom/google/android/location/collectionlib/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/l;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/location/collectionlib/ab;->a(Ljava/lang/String;)V

    .line 263
    return-void
.end method
