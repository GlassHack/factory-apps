.class public final Lcom/google/android/gms/gcm/aq;
.super Lcom/google/android/gms/gcm/bd;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 89
    invoke-direct {p0}, Lcom/google/android/gms/gcm/bd;-><init>()V

    .line 86
    iput-wide v0, p0, Lcom/google/android/gms/gcm/aq;->a:J

    .line 87
    iput-wide v0, p0, Lcom/google/android/gms/gcm/aq;->b:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/aq;->f:Z

    .line 91
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/gcm/aq;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/aq;->e:Z

    .line 182
    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/gcm/aq;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/aq;->c:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/gcm/aq;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/gms/gcm/aq;->d:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method protected final b()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 193
    invoke-super {p0}, Lcom/google/android/gms/gcm/bd;->b()V

    .line 194
    iget-wide v0, p0, Lcom/google/android/gms/gcm/aq;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must call setPeriod(long) to establish an execution interval for this periodic task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/gcm/aq;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 199
    iget-wide v0, p0, Lcom/google/android/gms/gcm/aq;->a:J

    long-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/gcm/aq;->b:J

    .line 202
    :cond_1
    return-void
.end method

.method public final c()Lcom/google/android/gms/gcm/PeriodicTask;
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/aq;->b()V

    .line 188
    new-instance v0, Lcom/google/android/gms/gcm/PeriodicTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/PeriodicTask;-><init>(Lcom/google/android/gms/gcm/aq;B)V

    return-object v0
.end method
