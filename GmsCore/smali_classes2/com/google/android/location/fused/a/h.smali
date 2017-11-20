.class public abstract Lcom/google/android/location/fused/a/h;
.super Lcom/google/android/location/fused/a/l;
.source "SourceFile"


# instance fields
.field f:J

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/android/location/fused/a/l;-><init>()V

    .line 8
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/android/location/fused/a/h;->f:J

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/h;->g:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 15
    iget-wide v0, p0, Lcom/google/android/location/fused/a/h;->f:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 16
    iput-wide p1, p0, Lcom/google/android/location/fused/a/h;->f:J

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 19
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/android/location/fused/a/l;->a(Ljava/lang/StringBuilder;)V

    .line 64
    const-string v0, ", interval[ms]="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/location/fused/a/h;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 65
    const-string v0, ", trigger="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/location/fused/a/h;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/google/android/location/fused/a/h;->g:Z

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/location/fused/a/l;->k:Z

    .line 52
    :cond_0
    invoke-super {p0}, Lcom/google/android/location/fused/a/l;->e()V

    .line 53
    return-void
.end method
