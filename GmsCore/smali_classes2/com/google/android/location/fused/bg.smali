.class public abstract Lcom/google/android/location/fused/bg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final b:Lcom/google/android/location/fused/a/n;

.field final c:Lcom/google/android/location/fused/a/m;

.field final d:Lcom/google/android/location/fused/c;

.field e:Lcom/google/android/location/fused/av;

.field f:Lcom/google/android/location/fused/bl;

.field g:I


# direct methods
.method public constructor <init>(Lcom/google/android/location/fused/a/n;Lcom/google/android/location/fused/a/m;Lcom/google/android/location/fused/c;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lcom/google/android/location/fused/av;->a:Lcom/google/android/location/fused/av;

    iput-object v0, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    .line 56
    new-instance v0, Lcom/google/android/location/fused/bi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/bi;-><init>(Lcom/google/android/location/fused/bg;B)V

    iput-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    .line 62
    const/16 v0, 0x1f

    iput v0, p0, Lcom/google/android/location/fused/bg;->g:I

    .line 72
    iput-object p1, p0, Lcom/google/android/location/fused/bg;->b:Lcom/google/android/location/fused/a/n;

    .line 73
    iput-object p2, p0, Lcom/google/android/location/fused/bg;->c:Lcom/google/android/location/fused/a/m;

    .line 74
    iput-object p3, p0, Lcom/google/android/location/fused/bg;->d:Lcom/google/android/location/fused/c;

    .line 75
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/fused/bg;)Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x4e20

    .line 20
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->b:Lcom/google/android/location/fused/a/n;

    iget-boolean v0, v0, Lcom/google/android/location/fused/a/l;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget v0, v0, Lcom/google/android/location/fused/av;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v0, v0, Lcom/google/android/location/fused/av;->b:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v0, v0, Lcom/google/android/location/fused/av;->c:J

    iget-object v2, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    iget-wide v2, v2, Lcom/google/android/location/fused/av;->b:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/location/fused/bg;->g:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/google/android/location/fused/bg;->g:I

    .line 103
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/location/fused/bl;->a(Z)V

    .line 106
    :cond_0
    return-void
.end method

.method public final a(Landroid/location/Location;)V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0, p1}, Lcom/google/android/location/fused/bl;->a(Landroid/location/Location;)V

    .line 93
    return-void
.end method

.method public final a(Lcom/google/android/location/fused/av;Z)V
    .locals 1

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/android/location/fused/bg;->e:Lcom/google/android/location/fused/av;

    .line 85
    iget-object v0, p0, Lcom/google/android/location/fused/bg;->f:Lcom/google/android/location/fused/bl;

    invoke-virtual {v0, p2}, Lcom/google/android/location/fused/bl;->a(Z)V

    .line 86
    return-void
.end method

.method public abstract a(Z)V
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/google/android/location/fused/bg;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
