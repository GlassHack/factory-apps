.class final Lcom/google/android/location/internal/server/j;
.super Lcom/google/android/location/internal/server/g;
.source "SourceFile"


# instance fields
.field final a:Z

.field final k:Z

.field l:I

.field m:I

.field final synthetic n:Lcom/google/android/location/internal/server/i;


# direct methods
.method constructor <init>(Lcom/google/android/location/internal/server/i;Landroid/app/PendingIntent;IILcom/google/android/location/collectionlib/cy;ZZLcom/google/android/location/p/j;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 618
    iput-object p1, p0, Lcom/google/android/location/internal/server/j;->n:Lcom/google/android/location/internal/server/i;

    .line 619
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object/from16 v5, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lcom/google/android/location/internal/server/g;-><init>(Landroid/app/PendingIntent;IILcom/google/android/location/collectionlib/cy;Lcom/google/android/location/p/j;ZLjava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/internal/server/j;->l:I

    .line 605
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/location/internal/server/j;->m:I

    .line 621
    iput-boolean p6, p0, Lcom/google/android/location/internal/server/j;->a:Z

    .line 622
    iput-boolean p7, p0, Lcom/google/android/location/internal/server/j;->k:Z

    .line 623
    return-void
.end method


# virtual methods
.method final b()V
    .locals 4

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/location/internal/server/j;->n:Lcom/google/android/location/internal/server/i;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, p0, v2, v3}, Lcom/google/android/location/internal/server/i;->a(Lcom/google/android/location/internal/server/i;Lcom/google/android/location/internal/server/j;J)V

    .line 639
    return-void
.end method
