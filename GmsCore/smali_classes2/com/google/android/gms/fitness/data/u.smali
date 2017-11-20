.class public final Lcom/google/android/gms/fitness/data/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/google/android/gms/fitness/data/Application;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    .line 166
    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/u;->b:J

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    .line 170
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/fitness/data/u;->f:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/fitness/data/Session;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_2

    move v0, v1

    :goto_0
    const-string v3, "Start time should be specified."

    invoke-static {v0, v3}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 316
    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->b:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->b:J

    iget-wide v6, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_3

    :cond_0
    :goto_1
    const-string v0, "End time should be later than start time."

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    .line 321
    :cond_1
    new-instance v0, Lcom/google/android/gms/fitness/data/Session;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/fitness/data/Session;-><init>(Lcom/google/android/gms/fitness/data/u;B)V

    return-object v0

    :cond_2
    move v0, v2

    .line 315
    goto :goto_0

    :cond_3
    move v1, v2

    .line 316
    goto :goto_1

    .line 319
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public final a(J)Lcom/google/android/gms/fitness/data/u;
    .locals 3

    .prologue
    .line 191
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "End time should be positive."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->a(ZLjava/lang/Object;)V

    .line 192
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/u;->b:J

    .line 193
    return-object p0

    .line 191
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/u;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->b(Lcom/google/android/gms/fitness/data/Session;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Session start times differ: %d vs %d"

    new-array v4, v8, [Ljava/lang/Object;

    iget-wide v6, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->b(Lcom/google/android/gms/fitness/data/Session;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_1
    const-string v3, "Identifiers differ: %s vs %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->d(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/fitness/data/Application;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_2
    move v0, v2

    :goto_2
    const-string v3, "Applications differ: %s vs %s"

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    aput-object v5, v4, v1

    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->d(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->b(Lcom/google/android/gms/fitness/data/Session;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/u;->a:J

    .line 288
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->e(Lcom/google/android/gms/fitness/data/Session;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/u;->b:J

    .line 290
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->f(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 291
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->f(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    .line 293
    :cond_3
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 294
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    .line 296
    :cond_4
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->g(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 297
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->g(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->e:Ljava/lang/String;

    .line 299
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->h(Lcom/google/android/gms/fitness/data/Session;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 300
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->h(Lcom/google/android/gms/fitness/data/Session;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/u;->f:I

    .line 302
    :cond_6
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->d(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 303
    invoke-static {p1}, Lcom/google/android/gms/fitness/data/Session;->d(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    .line 305
    :cond_7
    return-object p0

    :cond_8
    move v0, v1

    .line 275
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 279
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 283
    goto :goto_2
.end method
