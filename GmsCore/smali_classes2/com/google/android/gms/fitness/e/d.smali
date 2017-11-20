.class final Lcom/google/android/gms/fitness/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/fitness/e/b;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Lcom/google/protobuf/nano/j;
    .locals 4

    .prologue
    .line 28
    check-cast p1, Lcom/google/android/gms/fitness/data/Session;

    new-instance v0, Lcom/google/n/a/a/a/a/ae;

    invoke-direct {v0}, Lcom/google/n/a/a/a/a/ae;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "session require identifier: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/aj;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->b:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->d:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->e:Ljava/lang/Long;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->j:Ljava/lang/Integer;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/n/a/a/a/a/b;

    invoke-direct {v1}, Lcom/google/n/a/a/a/a/b;-><init>()V

    iput-object v1, v0, Lcom/google/n/a/a/a/a/ae;->i:Lcom/google/n/a/a/a/a/b;

    iget-object v1, v0, Lcom/google/n/a/a/a/a/ae;->i:Lcom/google/n/a/a/a/a/b;

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Session;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public final synthetic a(Lcom/google/protobuf/nano/j;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/16 v9, 0x3e8

    const/16 v8, 0x64

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    check-cast p1, Lcom/google/n/a/a/a/a/ae;

    iget-object v0, p1, Lcom/google/n/a/a/a/a/ae;->i:Lcom/google/n/a/a/a/a/b;

    if-nez v0, :cond_6

    const-string v0, "unknown"

    :goto_0
    new-instance v4, Lcom/google/android/gms/fitness/data/u;

    invoke-direct {v4}, Lcom/google/android/gms/fitness/data/u;-><init>()V

    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->a:Ljava/lang/String;

    iput-object v1, v4, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    :cond_0
    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v5, p1, Lcom/google/n/a/a/a/a/ae;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v8, :cond_7

    move v1, v2

    :goto_1
    const-string v6, "Session name cannot exceed %d characters"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, v4, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    :cond_1
    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v5, p1, Lcom/google/n/a/a/a/a/ae;->c:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v9, :cond_8

    move v1, v2

    :goto_2
    const-string v6, "Session description cannot exceed %d characters"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    iput-object v5, v4, Lcom/google/android/gms/fitness/data/u;->e:Ljava/lang/String;

    :cond_2
    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->d:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_9

    :goto_3
    const-string v1, "Start time should be positive."

    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    iput-wide v6, v4, Lcom/google/android/gms/fitness/data/u;->a:J

    :cond_3
    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->e:Ljava/lang/Long;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->e:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/google/android/gms/fitness/data/u;->a(J)Lcom/google/android/gms/fitness/data/u;

    :cond_4
    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->j:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    iget-object v1, p1, Lcom/google/n/a/a/a/a/ae;->j:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/fitness/a;->b(I)I

    move-result v1

    iput v1, v4, Lcom/google/android/gms/fitness/data/u;->f:I

    :cond_5
    new-instance v1, Lcom/google/android/gms/fitness/data/Application;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v4, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v4}, Lcom/google/android/gms/fitness/data/u;->a()Lcom/google/android/gms/fitness/data/Session;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p1, Lcom/google/n/a/a/a/a/ae;->i:Lcom/google/n/a/a/a/a/b;

    iget-object v0, v0, Lcom/google/n/a/a/a/a/b;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto :goto_1

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    move v2, v3

    goto :goto_3
.end method
