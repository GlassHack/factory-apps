.class final Lcom/google/android/gms/fitness/sensors/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:J

.field final c:I


# direct methods
.method private constructor <init>(JJI)V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-wide p1, p0, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    .line 337
    iput-wide p3, p0, Lcom/google/android/gms/fitness/sensors/c/i;->b:J

    .line 338
    iput p5, p0, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    .line 339
    return-void
.end method

.method synthetic constructor <init>(JJIB)V
    .locals 1

    .prologue
    .line 329
    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/fitness/sensors/c/i;-><init>(JJI)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/sensors/c/i;)D
    .locals 4

    .prologue
    .line 329
    iget-wide v0, p0, Lcom/google/android/gms/fitness/sensors/c/i;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/c/i;->b:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/c/i;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/sensors/c/i;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/fitness/sensors/c/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
