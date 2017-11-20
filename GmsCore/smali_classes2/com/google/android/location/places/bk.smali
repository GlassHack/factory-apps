.class public Lcom/google/android/location/places/bk;
.super Lcom/google/android/location/places/z;
.source "SourceFile"


# static fields
.field private static final a:J


# instance fields
.field private final b:Lcom/google/android/location/places/at;

.field private final c:Lcom/google/android/location/places/bs;

.field private final d:Lcom/google/android/location/k/b;

.field private e:Lcom/google/android/location/f/bh;

.field private f:J

.field private g:Lcom/google/android/location/places/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/location/places/bk;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/location/places/at;Lcom/google/android/location/k/b;Lcom/google/android/location/places/bs;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/google/android/location/places/z;-><init>()V

    .line 55
    invoke-static {p1}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/places/at;

    iput-object v0, p0, Lcom/google/android/location/places/bk;->b:Lcom/google/android/location/places/at;

    .line 56
    invoke-static {p2}, Lcom/google/c/a/ah;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/k/b;

    iput-object v0, p0, Lcom/google/android/location/places/bk;->d:Lcom/google/android/location/k/b;

    .line 57
    iput-object p3, p0, Lcom/google/android/location/places/bk;->c:Lcom/google/android/location/places/bs;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/google/android/location/places/bk;)Lcom/google/android/location/places/bs;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/places/bk;->c:Lcom/google/android/location/places/bs;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/location/places/bk;)Lcom/google/android/location/places/w;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/places/bk;->g:Lcom/google/android/location/places/w;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/location/f/ak;)V
    .locals 6

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    iget-object v1, p0, Lcom/google/android/location/places/bk;->c:Lcom/google/android/location/places/bs;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/location/places/bk;->e:Lcom/google/android/location/f/bh;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/location/places/bk;->d:Lcom/google/android/location/k/b;

    invoke-interface {v1}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/location/places/bk;->f:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/google/android/location/places/bk;->a:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/android/location/places/bk;->c:Lcom/google/android/location/places/bs;

    iget-object v1, p0, Lcom/google/android/location/places/bk;->e:Lcom/google/android/location/f/bh;

    invoke-interface {v0, v1}, Lcom/google/android/location/places/bs;->a(Lcom/google/android/location/f/bh;)Ljava/util/List;

    move-result-object v0

    .line 71
    :cond_0
    if-eqz v0, :cond_2

    .line 73
    iget-object v1, p0, Lcom/google/android/location/places/bk;->g:Lcom/google/android/location/places/w;

    invoke-interface {v1, v0}, Lcom/google/android/location/places/w;->a(Ljava/util/List;)V

    .line 79
    :goto_1
    return-void

    .line 68
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/google/android/location/places/bk;->b:Lcom/google/android/location/places/at;

    new-instance v1, Lcom/google/android/location/places/bl;

    iget-object v2, p0, Lcom/google/android/location/places/bk;->e:Lcom/google/android/location/f/bh;

    invoke-direct {v1, p0, v2}, Lcom/google/android/location/places/bl;-><init>(Lcom/google/android/location/places/bk;Lcom/google/android/location/f/bh;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/location/places/at;->a(Lcom/google/android/location/f/ak;Lcom/google/android/location/places/w;)V

    goto :goto_1
.end method

.method public final a(Lcom/google/android/location/f/bh;)V
    .locals 2

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iput-object p1, p0, Lcom/google/android/location/places/bk;->e:Lcom/google/android/location/f/bh;

    .line 85
    iget-object v0, p0, Lcom/google/android/location/places/bk;->d:Lcom/google/android/location/k/b;

    invoke-interface {v0}, Lcom/google/android/location/k/b;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/location/places/bk;->f:J

    .line 87
    :cond_0
    return-void
.end method

.method public final a(Lcom/google/android/location/places/w;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/android/location/places/bk;->g:Lcom/google/android/location/places/w;

    .line 63
    return-void
.end method
