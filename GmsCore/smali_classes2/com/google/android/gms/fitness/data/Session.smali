.class public Lcom/google/android/gms/fitness/data/Session;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final a:I

.field private final b:J

.field private final c:J

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:I

.field private final h:Lcom/google/android/gms/fitness/data/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    new-instance v0, Lcom/google/android/gms/fitness/data/v;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/v;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Session;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Application;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput p1, p0, Lcom/google/android/gms/fitness/data/Session;->a:I

    .line 105
    iput-wide p2, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    .line 106
    iput-wide p4, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    .line 107
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    .line 110
    iput p9, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    .line 111
    iput-object p10, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    .line 112
    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session;->a:I

    .line 125
    iput-wide p1, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    .line 126
    iput-wide p3, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    .line 127
    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    .line 128
    iput-object p6, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    .line 129
    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    .line 130
    iput p8, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    .line 131
    new-instance v0, Lcom/google/android/gms/fitness/data/Application;

    const/4 v1, 0x0

    invoke-direct {v0, p9, v1}, Lcom/google/android/gms/fitness/data/Application;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    .line 132
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/fitness/data/u;)V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session;->a:I

    .line 136
    iget-wide v0, p1, Lcom/google/android/gms/fitness/data/u;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    .line 137
    iget-wide v0, p1, Lcom/google/android/gms/fitness/data/u;->b:J

    iput-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    .line 138
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/u;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/u;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/u;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    .line 141
    iget v0, p1, Lcom/google/android/gms/fitness/data/u;->f:I

    iput v0, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    .line 142
    iget-object v0, p1, Lcom/google/android/gms/fitness/data/u;->g:Lcom/google/android/gms/fitness/data/Application;

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    .line 143
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/fitness/data/u;B)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Session;-><init>(Lcom/google/android/gms/fitness/data/u;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/fitness/data/Session;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/gms/fitness/data/Session;)Lcom/google/android/gms/fitness/data/Application;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/gms/fitness/data/Session;)J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/gms/fitness/data/Session;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/google/android/gms/fitness/data/Session;)I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    return v0
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    return-wide v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Application;)Lcom/google/android/gms/fitness/data/Session;
    .locals 11

    .prologue
    .line 332
    new-instance v0, Lcom/google/android/gms/fitness/data/Session;

    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    iget-wide v4, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    iget-object v6, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    iget v9, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/fitness/data/Session;-><init>(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/google/android/gms/fitness/data/Application;)V

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/fitness/data/Session;)Z
    .locals 4

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    iget-wide v2, p1, Lcom/google/android/gms/fitness/data/Session;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 349
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    return-wide v0
.end method

.method public final c()Z
    .locals 4

    .prologue
    .line 356
    iget-wide v0, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 476
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 425
    if-eq p1, p0, :cond_0

    instance-of v2, p1, Lcom/google/android/gms/fitness/data/Session;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Session;

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Session;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    iget-wide v4, p1, Lcom/google/android/gms/fitness/data/Session;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    iget-object v3, p1, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Session;->g:I

    if-ne v2, v3, :cond_2

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    return v0
.end method

.method public final h()Lcom/google/android/gms/fitness/data/Application;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/Application;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final j()I
    .locals 2

    .prologue
    .line 409
    const/16 v0, 0x1c

    .line 410
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1c

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 416
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 417
    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 419
    :cond_2
    add-int/lit8 v0, v0, 0x4

    .line 420
    return v0
.end method

.method final k()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/google/android/gms/fitness/data/Session;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 458
    invoke-static {p0}, Lcom/google/android/gms/common/internal/ag;->a(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "endTime"

    iget-wide v2, p0, Lcom/google/android/gms/fitness/data/Session;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "identifier"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "activity"

    iget v2, p0, Lcom/google/android/gms/fitness/data/Session;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    const-string v1, "application"

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Session;->h:Lcom/google/android/gms/fitness/data/Application;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/ah;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/ah;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/ah;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 482
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/v;->a(Lcom/google/android/gms/fitness/data/Session;Landroid/os/Parcel;I)V

    .line 483
    return-void
.end method
