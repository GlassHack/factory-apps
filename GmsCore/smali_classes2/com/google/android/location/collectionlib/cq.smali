.class final Lcom/google/android/location/collectionlib/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/f/ai;

.field final synthetic b:Landroid/hardware/Sensor;

.field final synthetic c:[J

.field final synthetic d:[J

.field final synthetic e:[F

.field final synthetic f:[F

.field final synthetic g:[F

.field final synthetic h:Lcom/google/android/location/collectionlib/co;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/f/ai;Landroid/hardware/Sensor;[J[J[F[F[F)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cq;->h:Lcom/google/android/location/collectionlib/co;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/cq;->a:Lcom/google/android/location/f/ai;

    iput-object p3, p0, Lcom/google/android/location/collectionlib/cq;->b:Landroid/hardware/Sensor;

    iput-object p4, p0, Lcom/google/android/location/collectionlib/cq;->c:[J

    iput-object p5, p0, Lcom/google/android/location/collectionlib/cq;->d:[J

    iput-object p6, p0, Lcom/google/android/location/collectionlib/cq;->e:[F

    iput-object p7, p0, Lcom/google/android/location/collectionlib/cq;->f:[F

    iput-object p8, p0, Lcom/google/android/location/collectionlib/cq;->g:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cq;->a:Lcom/google/android/location/f/ai;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/collectionlib/ce;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cq;->b:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/location/collectionlib/cq;->c:[J

    iget-object v3, p0, Lcom/google/android/location/collectionlib/cq;->d:[J

    iget-object v4, p0, Lcom/google/android/location/collectionlib/cq;->e:[F

    iget-object v5, p0, Lcom/google/android/location/collectionlib/cq;->f:[F

    iget-object v6, p0, Lcom/google/android/location/collectionlib/cq;->g:[F

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/location/collectionlib/ce;->a(I[J[J[F[F[F)V

    .line 106
    return-void
.end method
