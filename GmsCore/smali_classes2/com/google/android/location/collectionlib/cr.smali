.class final Lcom/google/android/location/collectionlib/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/location/f/ai;

.field final synthetic b:Landroid/hardware/Sensor;

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:Lcom/google/android/location/collectionlib/co;


# direct methods
.method constructor <init>(Lcom/google/android/location/collectionlib/co;Lcom/google/android/location/f/ai;Landroid/hardware/Sensor;JJFFF)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/location/collectionlib/cr;->h:Lcom/google/android/location/collectionlib/co;

    iput-object p2, p0, Lcom/google/android/location/collectionlib/cr;->a:Lcom/google/android/location/f/ai;

    iput-object p3, p0, Lcom/google/android/location/collectionlib/cr;->b:Landroid/hardware/Sensor;

    iput-wide p4, p0, Lcom/google/android/location/collectionlib/cr;->c:J

    iput-wide p6, p0, Lcom/google/android/location/collectionlib/cr;->d:J

    iput p8, p0, Lcom/google/android/location/collectionlib/cr;->e:F

    iput p9, p0, Lcom/google/android/location/collectionlib/cr;->f:F

    iput p10, p0, Lcom/google/android/location/collectionlib/cr;->g:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/location/collectionlib/cr;->a:Lcom/google/android/location/f/ai;

    iget-object v0, v0, Lcom/google/android/location/f/ai;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/collectionlib/ce;

    iget-object v1, p0, Lcom/google/android/location/collectionlib/cr;->b:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iget-wide v2, p0, Lcom/google/android/location/collectionlib/cr;->c:J

    iget-wide v4, p0, Lcom/google/android/location/collectionlib/cr;->d:J

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    const/4 v6, 0x0

    iget v7, p0, Lcom/google/android/location/collectionlib/cr;->e:F

    iget v8, p0, Lcom/google/android/location/collectionlib/cr;->f:F

    iget v9, p0, Lcom/google/android/location/collectionlib/cr;->g:F

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/location/collectionlib/ce;->a(IJJIFFF)V

    .line 134
    return-void
.end method
