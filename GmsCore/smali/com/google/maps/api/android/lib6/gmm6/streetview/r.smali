.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/r;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

.field final b:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->b:[F

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/an;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/r;->a:Lcom/google/maps/api/android/lib6/gmm6/streetview/an;

    return-void
.end method
