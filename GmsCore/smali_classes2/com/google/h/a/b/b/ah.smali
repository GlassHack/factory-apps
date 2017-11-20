.class public final Lcom/google/h/a/b/b/ah;
.super Lcom/google/h/a/b/b/c;
.source "SourceFile"


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;

.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field static final f:J

.field private static final g:[D

.field private static final h:[Z

.field private static final i:[Z

.field private static final j:Ljava/util/EnumSet;

.field private static final k:Ljava/util/EnumSet;

.field private static final l:[D

.field private static final m:[Z

.field private static final n:[Z


# instance fields
.field private final o:Lcom/google/h/a/b/b/ac;

.field private final p:Lcom/google/h/a/b/b/ac;

.field private final q:Lcom/google/h/a/b/b/t;

.field private final r:Lcom/google/h/a/b/b/t;

.field private final s:Lcom/google/h/a/b/b/t;

.field private t:Lcom/google/h/a/b/b/t;

.field private final u:Lcom/google/h/a/b/b/t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 45
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "in_vehicle"

    aput-object v1, v0, v3

    const-string v1, "maybe_leaving_vehicle"

    aput-object v1, v0, v4

    const-string v1, "on_foot"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/h/a/b/b/ah;->b:[Ljava/lang/String;

    .line 50
    new-array v0, v2, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/h/a/b/b/ah;->g:[D

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "speed_high"

    aput-object v1, v0, v3

    const-string v1, "speed_low"

    aput-object v1, v0, v4

    const-string v1, "activity_in_vehicle"

    aput-object v1, v0, v5

    const-string v1, "activity_on_foot"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/h/a/b/b/ah;->c:[Ljava/lang/String;

    .line 57
    new-array v0, v2, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/h/a/b/b/ah;->h:[Z

    .line 59
    new-array v0, v2, [Z

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/h/a/b/b/ah;->i:[Z

    .line 74
    sget-object v0, Lcom/google/h/a/b/a/c;->a:Lcom/google/h/a/b/a/c;

    sget-object v1, Lcom/google/h/a/b/a/c;->d:Lcom/google/h/a/b/a/c;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/h/a/b/b/ah;->j:Ljava/util/EnumSet;

    .line 76
    sget-object v0, Lcom/google/h/a/b/a/c;->b:Lcom/google/h/a/b/a/c;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/h/a/b/b/ah;->k:Ljava/util/EnumSet;

    .line 79
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "good_gps"

    aput-object v1, v0, v3

    const-string v1, "weak_gps"

    aput-object v1, v0, v4

    const-string v1, "bad_gps"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/h/a/b/b/ah;->d:[Ljava/lang/String;

    .line 84
    new-array v0, v2, [D

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/h/a/b/b/ah;->l:[D

    .line 85
    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "gps_pdr_match"

    aput-object v1, v0, v3

    const-string v1, "gps_snr_decrease"

    aput-object v1, v0, v4

    const-string v1, "wifi_better_than_gps"

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/h/a/b/b/ah;->e:[Ljava/lang/String;

    .line 90
    new-array v0, v2, [Z

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/h/a/b/b/ah;->m:[Z

    .line 92
    new-array v0, v2, [Z

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/h/a/b/b/ah;->n:[Z

    .line 100
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/h/a/b/b/ah;->f:J

    return-void

    .line 50
    :array_0
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
    .end array-data

    .line 57
    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 59
    :array_2
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 84
    :array_3
    .array-data 8
        0x3fd3333333333333L    # 0.3
        0x3fd3333333333333L    # 0.3
        0x3fd999999999999aL    # 0.4
    .end array-data

    .line 90
    :array_4
    .array-data 1
        0x1t
        0x1t
        0x0t
    .end array-data

    .line 92
    :array_5
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 14

    .prologue
    const-wide v12, 0x3fe3333333333333L    # 0.6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 126
    new-instance v0, Lcom/google/h/a/b/b/ac;

    sget-object v1, Lcom/google/h/a/b/b/ah;->g:[D

    new-instance v2, Lcom/google/h/a/b/b/ab;

    invoke-direct {v2}, Lcom/google/h/a/b/b/ab;-><init>()V

    invoke-virtual {v2, v6, v6, v12, v13}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fd8f5c28f5c28f6L    # 0.39

    invoke-virtual {v2, v6, v7, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v2, v6, v8, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v2, v7, v6, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-virtual {v2, v7, v7, v12, v13}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v2, v7, v8, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fd8f5c28f5c28f6L    # 0.39

    invoke-virtual {v2, v8, v6, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v2, v8, v7, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-virtual {v2, v8, v8, v12, v13}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-direct {v0, v1, v2}, Lcom/google/h/a/b/b/ac;-><init>([DLcom/google/h/a/b/b/ag;)V

    new-instance v1, Lcom/google/h/a/b/b/ac;

    sget-object v2, Lcom/google/h/a/b/b/ah;->l:[D

    new-instance v3, Lcom/google/h/a/b/b/ab;

    invoke-direct {v3}, Lcom/google/h/a/b/b/ab;-><init>()V

    invoke-virtual {v3, v6, v6, v10, v11}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fd147ae147ae148L    # 0.27

    invoke-virtual {v3, v6, v7, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fcd70a3d70a3d71L    # 0.23

    invoke-virtual {v3, v6, v8, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v3, v7, v6, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-virtual {v3, v7, v7, v10, v11}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v3, v7, v8, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v3, v8, v6, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-virtual {v3, v8, v7, v4, v5}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-virtual {v3, v8, v8, v10, v11}, Lcom/google/h/a/b/b/ab;->a(IID)V

    invoke-direct {v1, v2, v3}, Lcom/google/h/a/b/b/ac;-><init>([DLcom/google/h/a/b/b/ag;)V

    invoke-direct {p0, v0, v1}, Lcom/google/h/a/b/b/ah;-><init>(Lcom/google/h/a/b/b/ac;Lcom/google/h/a/b/b/ac;)V

    .line 135
    return-void
.end method

.method private constructor <init>(Lcom/google/h/a/b/b/ac;Lcom/google/h/a/b/b/ac;)V
    .locals 12

    .prologue
    const-wide v10, 0x3fb0a3d70a3d70a4L    # 0.065

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 140
    invoke-direct {p0}, Lcom/google/h/a/b/b/c;-><init>()V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/ah;->t:Lcom/google/h/a/b/b/t;

    .line 141
    iput-object p1, p0, Lcom/google/h/a/b/b/ah;->o:Lcom/google/h/a/b/b/ac;

    .line 142
    iput-object p2, p0, Lcom/google/h/a/b/b/ah;->p:Lcom/google/h/a/b/b/ac;

    .line 143
    new-instance v0, Lcom/google/h/a/b/b/e;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/h/a/b/b/e;-><init>(I)V

    const-wide v2, 0x3fed99999999999aL    # 0.925

    invoke-virtual {v0, v5, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    invoke-virtual {v0, v5, v8, v10, v11}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fee666666666666L    # 0.95

    invoke-virtual {v0, v5, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    invoke-virtual {v0, v5, v6, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fed99999999999aL    # 0.925

    invoke-virtual {v0, v6, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    invoke-virtual {v0, v6, v8, v10, v11}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v6, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fee666666666666L    # 0.95

    invoke-virtual {v0, v6, v6, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fa2f1a9fbe76c8bL    # 0.037

    invoke-virtual {v0, v7, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fee8f5c28f5c28fL    # 0.955

    invoke-virtual {v0, v7, v8, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v0, v7, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    invoke-virtual {v0}, Lcom/google/h/a/b/b/e;->a()V

    .line 144
    new-instance v1, Lcom/google/h/a/b/b/e;

    invoke-direct {v1, v8}, Lcom/google/h/a/b/b/e;-><init>(I)V

    const-wide v2, 0x3fe51eb851eb851fL    # 0.66

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fcd70a3d70a3d71L    # 0.23

    invoke-virtual {v1, v5, v6, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    invoke-virtual {v1, v5, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fdd70a3d70a3d71L    # 0.46

    invoke-virtual {v1, v6, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fd3333333333333L    # 0.3

    invoke-virtual {v1, v6, v6, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fceb851eb851eb8L    # 0.24

    invoke-virtual {v1, v6, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    const-wide v2, 0x3fc47ae147ae147bL    # 0.16

    invoke-virtual {v1, v7, v5, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    invoke-virtual {v1}, Lcom/google/h/a/b/b/e;->a()V

    const-wide v2, 0x3fe8a3d70a3d70a4L    # 0.77

    invoke-virtual {v1, v7, v7, v2, v3}, Lcom/google/h/a/b/b/e;->a(IID)V

    .line 148
    new-instance v2, Lcom/google/h/a/b/b/a;

    invoke-direct {v2}, Lcom/google/h/a/b/b/a;-><init>()V

    iput-object v2, p0, Lcom/google/h/a/b/b/ah;->q:Lcom/google/h/a/b/b/t;

    .line 149
    new-instance v2, Lcom/google/h/a/b/b/am;

    new-instance v3, Lcom/google/h/a/b/b/ap;

    invoke-static {}, Lcom/google/h/a/b/b/v;->d()Lcom/google/h/a/b/b/v;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/h/a/b/b/ap;-><init>(Lcom/google/h/a/b/b/t;)V

    sget-object v4, Lcom/google/h/a/b/b/ah;->k:Ljava/util/EnumSet;

    invoke-direct {v2, v3, v4}, Lcom/google/h/a/b/b/am;-><init>(Lcom/google/h/a/b/b/t;Ljava/util/EnumSet;)V

    iput-object v2, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    .line 151
    new-instance v2, Lcom/google/h/a/b/b/am;

    new-instance v3, Lcom/google/h/a/b/b/ap;

    new-instance v4, Lcom/google/h/a/b/b/d;

    invoke-direct {v4}, Lcom/google/h/a/b/b/d;-><init>()V

    invoke-direct {v3, v4}, Lcom/google/h/a/b/b/ap;-><init>(Lcom/google/h/a/b/b/t;)V

    sget-object v4, Lcom/google/h/a/b/b/ah;->j:Ljava/util/EnumSet;

    invoke-direct {v2, v3, v4}, Lcom/google/h/a/b/b/am;-><init>(Lcom/google/h/a/b/b/t;Ljava/util/EnumSet;)V

    iput-object v2, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    .line 153
    new-instance v2, Lcom/google/h/a/b/b/ak;

    invoke-direct {v2, p0, v5}, Lcom/google/h/a/b/b/ak;-><init>(Lcom/google/h/a/b/b/ah;B)V

    iput-object v2, p0, Lcom/google/h/a/b/b/ah;->u:Lcom/google/h/a/b/b/t;

    .line 155
    new-instance v2, Lcom/google/h/a/b/b/ap;

    new-instance v3, Lcom/google/h/a/b/b/ai;

    invoke-direct {v3, p0}, Lcom/google/h/a/b/b/ai;-><init>(Lcom/google/h/a/b/b/ah;)V

    invoke-direct {v2, v3}, Lcom/google/h/a/b/b/ap;-><init>(Lcom/google/h/a/b/b/t;)V

    .line 163
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/google/h/a/b/b/t;

    iget-object v4, p0, Lcom/google/h/a/b/b/ah;->q:Lcom/google/h/a/b/b/t;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    aput-object v4, v3, v7

    iget-object v4, p0, Lcom/google/h/a/b/b/ah;->u:Lcom/google/h/a/b/b/t;

    aput-object v4, v3, v8

    const/4 v4, 0x4

    new-instance v5, Lcom/google/h/a/b/b/ap;

    new-instance v6, Lcom/google/h/a/b/b/ao;

    invoke-direct {v6, p0, v1}, Lcom/google/h/a/b/b/ao;-><init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V

    invoke-direct {v5, v6}, Lcom/google/h/a/b/b/ap;-><init>(Lcom/google/h/a/b/b/t;)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Lcom/google/h/a/b/b/al;

    invoke-direct {v5, p0, v0}, Lcom/google/h/a/b/b/al;-><init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V

    aput-object v5, v3, v4

    const/4 v0, 0x6

    new-instance v4, Lcom/google/h/a/b/b/am;

    new-instance v5, Lcom/google/h/a/b/b/ap;

    new-instance v6, Lcom/google/h/a/b/b/an;

    invoke-direct {v6, p0, v1}, Lcom/google/h/a/b/b/an;-><init>(Lcom/google/h/a/b/b/ah;Lcom/google/h/a/b/b/e;)V

    invoke-direct {v5, v6}, Lcom/google/h/a/b/b/ap;-><init>(Lcom/google/h/a/b/b/t;)V

    sget-object v1, Lcom/google/h/a/b/b/ah;->j:Ljava/util/EnumSet;

    invoke-direct {v4, v5, v1}, Lcom/google/h/a/b/b/am;-><init>(Lcom/google/h/a/b/b/t;Ljava/util/EnumSet;)V

    aput-object v4, v3, v0

    const/4 v0, 0x7

    aput-object v2, v3, v0

    iput-object v3, p0, Lcom/google/h/a/b/b/c;->a:[Lcom/google/h/a/b/b/t;

    .line 174
    return-void
.end method

.method static synthetic a(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->o:Lcom/google/h/a/b/b/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/google/h/a/b/b/ac;[Z)Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ac;[ZI)Z

    move-result v0

    return v0
.end method

.method private static a(Lcom/google/h/a/b/b/ac;[ZI)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/google/h/a/b/b/ac;->b()Lcom/google/h/a/b/b/ae;

    move-result-object v2

    move v1, v0

    .line 241
    :goto_0
    if-ge v1, p2, :cond_1

    invoke-interface {v2}, Lcom/google/h/a/b/b/ae;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    invoke-interface {v2}, Lcom/google/h/a/b/b/ae;->b()I

    move-result v3

    aget-boolean v3, p1, v3

    if-nez v3, :cond_0

    .line 246
    :goto_1
    return v0

    .line 241
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/ac;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->p:Lcom/google/h/a/b/b/ac;

    return-object v0
.end method

.method static synthetic c(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/t;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/h/a/b/b/ah;->t:Lcom/google/h/a/b/b/t;

    return-object v0
.end method

.method static synthetic d(Lcom/google/h/a/b/b/ah;)Lcom/google/h/a/b/b/t;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    return-object v0
.end method

.method static synthetic d()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/h/a/b/b/ah;->j:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic e()Ljava/util/EnumSet;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/h/a/b/b/ah;->k:Ljava/util/EnumSet;

    return-object v0
.end method

.method static synthetic f()[Z
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/h/a/b/b/ah;->h:[Z

    return-object v0
.end method

.method private g()Lcom/google/h/a/b/b/t;
    .locals 11

    .prologue
    const/4 v10, 0x2

    .line 184
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    invoke-interface {v1}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v2

    .line 186
    iget-object v1, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    invoke-interface {v1}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v1

    .line 187
    iget-object v4, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    invoke-interface {v4}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v4

    .line 188
    iget-object v6, p0, Lcom/google/h/a/b/b/ah;->q:Lcom/google/h/a/b/b/t;

    invoke-interface {v6}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v6

    .line 189
    iget-object v7, p0, Lcom/google/h/a/b/b/ah;->q:Lcom/google/h/a/b/b/t;

    invoke-interface {v7}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v8

    .line 192
    if-eqz v6, :cond_0

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v6, v2

    cmp-long v6, v8, v6

    if-lez v6, :cond_0

    sget-wide v6, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v6, v4

    cmp-long v6, v8, v6

    if-lez v6, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->q:Lcom/google/h/a/b/b/t;

    .line 232
    :goto_0
    return-object v0

    .line 198
    :cond_0
    if-nez v1, :cond_1

    .line 199
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 202
    :cond_1
    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 207
    :cond_2
    sget-wide v0, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 212
    :cond_3
    sget-wide v0, Lcom/google/h/a/b/b/ah;->f:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->o:Lcom/google/h/a/b/b/ac;

    sget-object v1, Lcom/google/h/a/b/b/ah;->i:[Z

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ac;[ZI)Z

    move-result v0

    if-nez v0, :cond_5

    .line 222
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 225
    :cond_5
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->p:Lcom/google/h/a/b/b/ac;

    sget-object v1, Lcom/google/h/a/b/b/ah;->n:[Z

    invoke-static {v0, v1, v10}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ac;[ZI)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 226
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->r:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->p:Lcom/google/h/a/b/b/ac;

    sget-object v1, Lcom/google/h/a/b/b/ah;->m:[Z

    invoke-static {v0, v1, v10}, Lcom/google/h/a/b/b/ah;->a(Lcom/google/h/a/b/b/ac;[ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    goto :goto_0

    .line 232
    :cond_7
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->t:Lcom/google/h/a/b/b/t;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->t:Lcom/google/h/a/b/b/t;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->s:Lcom/google/h/a/b/b/t;

    goto :goto_0
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/h/a/b/b/ah;->u:Lcom/google/h/a/b/b/t;

    invoke-interface {v0, p1, p2}, Lcom/google/h/a/b/b/t;->a(J)I

    move-result v0

    return v0
.end method

.method public final a()Lcom/google/h/a/b/a/b;
    .locals 1

    .prologue
    .line 251
    invoke-direct {p0}, Lcom/google/h/a/b/b/ah;->g()Lcom/google/h/a/b/b/t;

    move-result-object v0

    .line 252
    iput-object v0, p0, Lcom/google/h/a/b/b/ah;->t:Lcom/google/h/a/b/b/t;

    .line 253
    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->a()Lcom/google/h/a/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/google/h/a/b/b/ah;->g()Lcom/google/h/a/b/b/t;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/h/a/b/b/t;->b()J

    move-result-wide v0

    return-wide v0
.end method
