.class public final Lcom/android/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:J

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide v2, p0, Lcom/android/a/b;->a:J

    .line 43
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/a/b;->b:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/a/b;->c:I

    .line 49
    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/android/a/b;->d:J

    .line 52
    iput-wide v2, p0, Lcom/android/a/b;->e:J

    .line 55
    iput-wide v2, p0, Lcom/android/a/b;->f:J

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 59
    iget v0, p0, Lcom/android/a/b;->c:I

    if-lez v0, :cond_0

    .line 60
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/a/b;->a:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/a/b;->b:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/a/b;->c:I

    int-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/a/b;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/android/a/b;->e:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-wide v4, p0, Lcom/android/a/b;->f:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "OperationScheduler.Options[backoff=%.1f+%.1f max=%.1f min=%.1f period=%.1f]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/a/b;->a:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/a/b;->b:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v5

    iget-wide v2, p0, Lcom/android/a/b;->d:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v8

    iget-wide v2, p0, Lcom/android/a/b;->e:J

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x4

    iget-wide v4, p0, Lcom/android/a/b;->f:J

    long-to-double v4, v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
