.class public final Lcom/google/android/gms/fitness/b/c/s;
.super Lcom/google/android/gms/fitness/b/c/a;
.source "SourceFile"


# static fields
.field private static final a:J

.field private static final e:J


# instance fields
.field private final b:I

.field private final c:F

.field private final d:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/b/c/s;->a:J

    .line 122
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/fitness/b/c/s;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/fitness/b/b;IFFJ)V
    .locals 7

    .prologue
    .line 45
    const-string v1, "derive_step_deltas"

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/b/c/a;-><init>(Ljava/lang/String;ZLcom/google/android/gms/fitness/b/b;J)V

    .line 46
    iput p2, p0, Lcom/google/android/gms/fitness/b/c/s;->b:I

    .line 47
    iput p4, p0, Lcom/google/android/gms/fitness/b/c/s;->d:F

    .line 48
    iput p3, p0, Lcom/google/android/gms/fitness/b/c/s;->c:F

    .line 49
    return-void
.end method

.method static synthetic a(FJJ)F
    .locals 1

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/fitness/b/c/s;->b(FJJ)F

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/google/android/gms/fitness/b/c/s;)F
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/google/android/gms/fitness/b/c/s;->d:F

    return v0
.end method

.method private static b(FJJ)F
    .locals 5

    .prologue
    .line 113
    sub-long v0, p3, p1

    .line 114
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 115
    const/high16 v0, -0x40800000    # -1.0f

    .line 119
    :goto_0
    return v0

    .line 118
    :cond_0
    long-to-float v0, v0

    sget-wide v2, Lcom/google/android/gms/fitness/b/c/s;->e:J

    long-to-float v1, v2

    div-float/2addr v0, v1

    .line 119
    div-float v0, p0, v0

    goto :goto_0
.end method

.method static synthetic c()J
    .locals 2

    .prologue
    .line 14
    sget-wide v0, Lcom/google/android/gms/fitness/b/c/s;->e:J

    return-wide v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)Lcom/google/android/gms/fitness/b/c/p;
    .locals 7

    .prologue
    .line 60
    new-instance v0, Lcom/google/android/gms/fitness/b/c/t;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/b/c/t;-><init>(Lcom/google/android/gms/fitness/b/c/s;Lcom/google/android/gms/fitness/b/p;Lcom/google/android/gms/fitness/b/e;J)V

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "com.google.step_count.delta"

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/fitness/b/c/a;->a(Lcom/google/android/gms/fitness/b/g;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;
    .locals 2

    .prologue
    .line 14
    invoke-super/range {p0 .. p6}, Lcom/google/android/gms/fitness/b/c/a;->a(Ljava/util/List;JJLcom/google/android/gms/fitness/b/q;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final a(IJJJJ)Z
    .locals 6

    .prologue
    .line 90
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p8, v0

    if-lez v0, :cond_0

    .line 91
    sub-long v0, p8, p6

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 92
    sub-long v2, p4, p2

    .line 93
    sget-wide v4, Lcom/google/android/gms/fitness/b/c/s;->a:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 94
    const/high16 v4, 0x40400000    # 3.0f

    long-to-float v2, v2

    mul-float/2addr v2, v4

    float-to-long v2, v2

    .line 95
    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 102
    :goto_0
    return v0

    .line 101
    :cond_0
    int-to-float v0, p1

    invoke-static {v0, p2, p3, p4, p5}, Lcom/google/android/gms/fitness/b/c/s;->b(FJJ)F

    move-result v0

    .line 102
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/fitness/b/c/s;->b:I

    if-gt p1, v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/fitness/b/c/s;->c:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic b()Ljava/util/List;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/google/android/gms/fitness/b/c/a;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
