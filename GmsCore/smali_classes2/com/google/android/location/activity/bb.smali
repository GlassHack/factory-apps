.class abstract Lcom/google/android/location/activity/bb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic f:Z


# instance fields
.field protected final d:Lcom/google/android/location/activity/k;

.field protected final e:Lcom/google/android/location/os/at;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/google/android/location/activity/bb;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/location/activity/bb;->f:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    .line 20
    iput-object p2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    .line 21
    return-void
.end method

.method private a(Lcom/google/android/location/activity/r;Lcom/google/android/location/activity/s;)V
    .locals 8

    .prologue
    const-wide/32 v6, 0xf4240

    .line 133
    sget-boolean v0, Lcom/google/android/location/activity/bb;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/location/activity/s;->d()Lcom/google/android/location/activity/a/o;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/location/activity/r;->d()Lcom/google/android/location/activity/a/o;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/location/activity/a;->a:Z

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->f()Lcom/google/android/location/activity/a;

    move-result-object v0

    iget-boolean v1, v0, Lcom/google/android/location/activity/a;->a:Z

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v1, v0, Lcom/google/android/location/activity/a;->b:Lcom/google/android/location/os/at;

    invoke-interface {v1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget-wide v0, v0, Lcom/google/android/location/activity/a;->c:J

    sub-long v0, v2, v0

    invoke-virtual {p2}, Lcom/google/android/location/activity/s;->q_()J

    move-result-wide v2

    div-long/2addr v2, v6

    const-wide/16 v4, 0x5dc

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->w()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/google/android/location/activity/s;->d()Lcom/google/android/location/activity/a/o;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/activity/a/o;->a()J

    move-result-wide v2

    div-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 145
    invoke-virtual {p0, p2}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "activityDetectionDisabled."

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    new-instance v0, Lcom/google/android/location/activity/at;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/at;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    .line 44
    return-void
.end method

.method protected final a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 170
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    const-string v1, "movetoDetectingState(%s)"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 172
    new-instance v0, Lcom/google/android/location/activity/bc;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/bc;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    new-instance v1, Lcom/google/android/location/activity/bd;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v3, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/bd;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/r;Lcom/google/android/location/activity/s;)V

    .line 187
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 175
    new-instance v0, Lcom/google/android/location/activity/v;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/v;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    new-instance v1, Lcom/google/android/location/activity/w;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v3, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/w;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/r;Lcom/google/android/location/activity/s;)V

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/google/android/location/activity/k;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 178
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->i()Lcom/google/android/location/activity/az;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/activity/az;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    new-instance v0, Lcom/google/android/location/activity/ay;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/ay;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 181
    :cond_4
    new-instance v0, Lcom/google/android/location/activity/ai;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/ai;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    goto :goto_0

    .line 183
    :cond_5
    if-ne p1, v5, :cond_1

    .line 184
    new-instance v0, Lcom/google/android/location/activity/x;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/x;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    new-instance v1, Lcom/google/android/location/activity/y;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v3, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v1, v2, v3}, Lcom/google/android/location/activity/y;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-direct {p0, v0, v1}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/r;Lcom/google/android/location/activity/s;)V

    goto :goto_0
.end method

.method protected final a(Lcom/google/android/location/activity/bb;)V
    .locals 4

    .prologue
    .line 115
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leaving state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->e()Lcom/google/android/location/activity/bb;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->e()Lcom/google/android/location/activity/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/location/activity/bb;->h()V

    .line 118
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/k;->a(Lcom/google/android/location/activity/bb;)V

    .line 119
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entering state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v2}, Lcom/google/android/location/activity/k;->e()Lcom/google/android/location/activity/bb;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/location/activity/bb;->g()V

    .line 122
    return-void
.end method

.method protected a(Lcom/google/android/location/activity/bj;Lcom/google/android/location/activity/bj;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected a(Lcom/google/android/location/k/k;)V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected c()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method g()V
    .locals 0

    .prologue
    .line 27
    return-void
.end method

.method h()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    invoke-virtual {v0}, Lcom/google/android/location/activity/k;->B()V

    .line 34
    return-void
.end method

.method public i()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public j()V
    .locals 0

    .prologue
    .line 199
    return-void
.end method

.method protected m_()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected n_()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected o_()V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/location/activity/at;

    iget-object v1, p0, Lcom/google/android/location/activity/bb;->d:Lcom/google/android/location/activity/k;

    iget-object v2, p0, Lcom/google/android/location/activity/bb;->e:Lcom/google/android/location/os/at;

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/activity/at;-><init>(Lcom/google/android/location/activity/k;Lcom/google/android/location/os/at;)V

    invoke-virtual {p0, v0}, Lcom/google/android/location/activity/bb;->a(Lcom/google/android/location/activity/bb;)V

    .line 91
    return-void
.end method

.method public p_()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method
