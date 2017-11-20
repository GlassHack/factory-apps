.class public final Lcom/google/android/location/activity/bk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/location/os/at;

.field final b:Lcom/google/android/location/activity/k;

.field public final c:Lcom/google/android/location/activity/br;

.field public d:Lcom/google/android/location/activity/bp;

.field e:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/at;Lcom/google/android/location/activity/k;)V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/location/activity/br;

    invoke-direct {v0, p0}, Lcom/google/android/location/activity/br;-><init>(Lcom/google/android/location/activity/bk;)V

    iput-object v0, p0, Lcom/google/android/location/activity/bk;->c:Lcom/google/android/location/activity/br;

    .line 38
    new-instance v0, Lcom/google/android/location/activity/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/activity/bo;-><init>(Lcom/google/android/location/activity/bk;B)V

    iput-object v0, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/location/activity/bk;->e:J

    .line 45
    iput-object p1, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    .line 46
    iput-object p2, p0, Lcom/google/android/location/activity/bk;->b:Lcom/google/android/location/activity/k;

    .line 47
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->c:Lcom/google/android/location/activity/br;

    iget-object v1, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-interface {p1}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/location/activity/br;->a(Lcom/google/android/location/activity/bp;J)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/bk;)V
    .locals 6

    .prologue
    .line 28
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "VehExitDetector"

    const-string v1, "Vehicle exited detected"

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/os/c;->ac:Lcom/google/android/location/os/c;

    invoke-virtual {v0, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/c;)V

    new-instance v0, Lcom/google/android/gms/location/ActivityRecognitionResult;

    new-instance v1, Lcom/google/android/gms/location/DetectedActivity;

    const/4 v2, 0x6

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/location/DetectedActivity;-><init>(II)V

    iget-object v2, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v2}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/location/k/b;->b()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v4}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/location/ActivityRecognitionResult;-><init>(Lcom/google/android/gms/location/DetectedActivity;JJ)V

    iget-object v1, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v1, v0}, Lcom/google/android/location/os/at;->a(Lcom/google/android/gms/location/ActivityRecognitionResult;)V

    new-instance v0, Lcom/google/android/location/activity/bs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/activity/bs;-><init>(Lcom/google/android/location/activity/bk;B)V

    invoke-direct {p0, v0}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bp;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/location/activity/bk;Lcom/google/android/location/activity/bp;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/android/location/activity/bk;->a(Lcom/google/android/location/activity/bp;)V

    return-void
.end method

.method private a(Lcom/google/android/location/activity/bp;)V
    .locals 10

    .prologue
    .line 306
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v8

    .line 307
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "VehExitDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leaving state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v2}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->v()Lcom/google/android/location/os/e;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lcom/google/android/location/os/v;

    sget-object v3, Lcom/google/android/location/os/c;->ab:Lcom/google/android/location/os/c;

    iget-object v0, v2, Lcom/google/android/location/os/e;->a:Lcom/google/android/location/os/ag;

    invoke-interface {v0}, Lcom/google/android/location/os/ag;->a()J

    move-result-wide v4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/location/os/v;-><init>(Lcom/google/android/location/os/e;Lcom/google/android/location/os/c;JLjava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/google/android/location/os/e;->a(Lcom/google/android/location/os/af;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/bp;->a(Lcom/google/android/location/activity/bp;)V

    .line 311
    iput-object p1, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    .line 312
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "VehExitDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Entering state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v2}, Lcom/google/android/location/activity/bp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->c:Lcom/google/android/location/activity/br;

    invoke-virtual {v0, p1, v8, v9}, Lcom/google/android/location/activity/br;->a(Lcom/google/android/location/activity/bp;J)V

    .line 314
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bp;->a()V

    .line 315
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/location/ActivityRecognitionResult;)Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a()Lcom/google/android/gms/location/DetectedActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/DetectedActivity;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 396
    iget-wide v0, p0, Lcom/google/android/location/activity/bk;->e:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/location/activity/bk;->e:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 402
    iget-wide v0, p0, Lcom/google/android/location/activity/bk;->e:J

    .line 403
    iput-wide v4, p0, Lcom/google/android/location/activity/bk;->e:J

    .line 404
    invoke-virtual {p0, v0, v1}, Lcom/google/android/location/activity/bk;->a(J)V

    goto :goto_0

    .line 406
    :cond_1
    iput-wide v4, p0, Lcom/google/android/location/activity/bk;->e:J

    .line 407
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v0}, Lcom/google/android/location/activity/bp;->c()V

    goto :goto_0
.end method

.method final a(J)V
    .locals 7

    .prologue
    .line 372
    iget-wide v0, p0, Lcom/google/android/location/activity/bk;->e:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 373
    iput-wide p1, p0, Lcom/google/android/location/activity/bk;->e:J

    .line 374
    sget-boolean v0, Lcom/google/android/location/j/a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "VehExitDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Alarm set to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v3}, Lcom/google/android/location/os/at;->c()Lcom/google/android/location/k/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/location/k/b;->d()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/location/p/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->a:Lcom/google/android/location/os/at;

    invoke-interface {v0}, Lcom/google/android/location/os/at;->f()Lcom/google/android/location/k/j;

    move-result-object v0

    sget-object v1, Lcom/google/android/location/k/k;->l:Lcom/google/android/location/k/k;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/google/android/location/k/j;->a(Lcom/google/android/location/k/k;JLcom/google/android/location/p/j;)V

    .line 378
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/location/activity/bk;->d:Lcom/google/android/location/activity/bp;

    invoke-virtual {v0, p1}, Lcom/google/android/location/activity/bp;->a(Z)V

    .line 427
    return-void
.end method
