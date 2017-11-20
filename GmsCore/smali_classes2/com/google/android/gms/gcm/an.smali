.class public final Lcom/google/android/gms/gcm/an;
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

    .line 80
    invoke-direct {p0}, Lcom/google/android/gms/gcm/bd;-><init>()V

    .line 82
    iput-wide v0, p0, Lcom/google/android/gms/gcm/an;->a:J

    .line 83
    iput-wide v0, p0, Lcom/google/android/gms/gcm/an;->b:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/gcm/an;
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/gcm/an;->e:Z

    .line 164
    return-object p0
.end method

.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/gcm/an;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/gcm/an;->c:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/gcm/an;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/gms/gcm/an;->d:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method protected final b()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 169
    invoke-super {p0}, Lcom/google/android/gms/gcm/bd;->b()V

    .line 170
    iget-wide v0, p0, Lcom/google/android/gms/gcm/an;->a:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/gcm/an;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify an execution window using setExecutionWindow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/gcm/an;->a:J

    iget-wide v2, p0, Lcom/google/android/gms/gcm/an;->b:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 175
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Window start must be shorter than window end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    return-void
.end method

.method public final c()Lcom/google/android/gms/gcm/OneoffTask;
    .locals 2

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/gcm/an;->b()V

    .line 183
    new-instance v0, Lcom/google/android/gms/gcm/OneoffTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/gcm/OneoffTask;-><init>(Lcom/google/android/gms/gcm/an;B)V

    return-object v0
.end method
