.class final Lcom/google/android/location/collectionlib/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/collectionlib/ac;

.field public b:I

.field final synthetic c:Lcom/google/android/location/collectionlib/x;


# direct methods
.method public constructor <init>(Lcom/google/android/location/collectionlib/x;Lcom/google/android/location/collectionlib/ac;I)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/google/android/location/collectionlib/y;->c:Lcom/google/android/location/collectionlib/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    iput-object p2, p0, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    .line 480
    iput p3, p0, Lcom/google/android/location/collectionlib/y;->b:I

    .line 481
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/location/collectionlib/ad;
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    iget v1, p0, Lcom/google/android/location/collectionlib/y;->b:I

    invoke-virtual {v0, v1}, Lcom/google/android/location/collectionlib/ac;->a(I)Lcom/google/android/location/collectionlib/ad;

    move-result-object v0

    .line 495
    iget v1, p0, Lcom/google/android/location/collectionlib/y;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/location/collectionlib/y;->b:I

    .line 496
    return-object v0
.end method

.method public final b()Z
    .locals 2

    .prologue
    .line 503
    iget v0, p0, Lcom/google/android/location/collectionlib/y;->b:I

    iget-object v1, p0, Lcom/google/android/location/collectionlib/y;->a:Lcom/google/android/location/collectionlib/ac;

    iget v1, v1, Lcom/google/android/location/collectionlib/ac;->e:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
