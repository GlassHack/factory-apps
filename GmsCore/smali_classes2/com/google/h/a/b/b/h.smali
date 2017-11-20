.class public final Lcom/google/h/a/b/b/h;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# static fields
.field private static final b:J

.field private static final c:J


# instance fields
.field private final d:Lcom/google/h/a/b/b/t;

.field private e:Lcom/google/h/a/b/a/b;

.field private f:J

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/h/a/b/b/h;->b:J

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/h/a/b/b/h;->c:J

    return-void
.end method

.method public constructor <init>(Lcom/google/h/a/b/b/t;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/google/h/a/b/b/h;->d:Lcom/google/h/a/b/b/t;

    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/h/a/b/b/t;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    .line 36
    return-void
.end method

.method private d()Z
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->e:Lcom/google/h/a/b/a/b;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/h/a/b/b/h;->g:J

    iget-wide v2, p0, Lcom/google/h/a/b/b/h;->f:J

    sget-wide v4, Lcom/google/h/a/b/b/h;->b:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/h/a/b/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->e:Lcom/google/h/a/b/a/b;

    .line 66
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->d:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(JLcom/google/h/a/b/a/b;)V
    .locals 5

    .prologue
    .line 40
    sget-object v0, Lcom/google/h/a/b/b/i;->a:[I

    iget-object v1, p3, Lcom/google/h/a/b/a/b;->b:Lcom/google/h/a/b/a/c;

    invoke-virtual {v1}, Lcom/google/h/a/b/a/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 53
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/h/a/b/b/h;->g:J

    .line 55
    if-eqz p3, :cond_1

    .line 56
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->d:Lcom/google/h/a/b/b/t;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/h/a/b/b/t;->a(JLcom/google/h/a/b/a/b;)V

    .line 58
    :cond_1
    return-void

    .line 42
    :pswitch_0
    iput-object p3, p0, Lcom/google/h/a/b/b/h;->e:Lcom/google/h/a/b/a/b;

    .line 43
    iput-wide p1, p0, Lcom/google/h/a/b/b/h;->f:J

    goto :goto_0

    .line 46
    :pswitch_1
    iget-wide v0, p0, Lcom/google/h/a/b/b/h;->f:J

    sget-wide v2, Lcom/google/h/a/b/b/h;->c:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 48
    const/4 p3, 0x0

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/h/a/b/b/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-wide v0, p0, Lcom/google/h/a/b/b/h;->f:J

    .line 75
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->d:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/h;->e:Lcom/google/h/a/b/a/b;

    .line 81
    iget-object v0, p0, Lcom/google/h/a/b/b/h;->d:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->c()V

    .line 82
    return-void
.end method
