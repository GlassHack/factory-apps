.class final Lcom/google/android/location/collectionlib/an;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/google/android/location/collectionlib/ak;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/ak;Ljava/util/List;J)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/android/location/collectionlib/an;->c:Lcom/google/android/location/collectionlib/ak;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/an;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/location/collectionlib/an;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/location/collectionlib/an;->c:Lcom/google/android/location/collectionlib/ak;

    invoke-static {v0}, Lcom/google/android/location/collectionlib/ak;->b(Lcom/google/android/location/collectionlib/ak;)Lcom/google/android/location/collectionlib/bv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/location/collectionlib/an;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/an;->b:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/location/collectionlib/bv;->a(Ljava/util/List;J)V

    .line 91
    return-void
.end method
