.class public abstract Lcom/google/glass/maps/map/Animations$MarkerAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final LOG_TIME_STEP:I = 0x2

.field static final SCALE:[F

.field static final TIME_STEP:I = 0x4

.field static final TOTAL_TIME:I


# instance fields
.field final startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x3f

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->SCALE:[F

    .line 60
    sget-object v0, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->SCALE:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->TOTAL_TIME:I

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x0
        0x3a8461fa    # 0.00101f
        0x3b84b5dd    # 0.00405f
        0x3c15182b    # 0.0091f
        0x3c843809    # 0.01614f
        0x3cce1c58    # 0.02516f
        0x3d13dd98    # 0.0361f
        0x3d48754f    # 0.04894f
        0x3d8255b0    # 0.06364f
        0x3da415f4    # 0.08012f
        0x3dc9667b    # 0.09834f
        0x3df22292    # 0.11823f
        0x3e0f12c2    # 0.13972f
        0x3e26a012    # 0.16272f
        0x3e3fa440    # 0.18715f
        0x3e5a0a52    # 0.21293f
        0x3e75b813    # 0.23996f
        0x3e894af5    # 0.26815f
        0x3e984231    # 0.29738f
        0x3ea7b4a2    # 0.32755f
        0x3eb793de
        0x3ec7d2c8    # 0.39028f
        0x3ed85f07    # 0.4226f
        0x3ee92b80    # 0.45541f
        0x3efa2878    # 0.48859f
        0x3f05a273
        0x3f0e392e    # 0.55556f
        0x3f16cf42    # 0.5891f
        0x3f1f5d79
        0x3f27dbf5    # 0.6557f
        0x3f304231    # 0.68851f
        0x3f3888f8
        0x3f40a7c6
        0x3f489763
        0x3f505144
        0x3f57cce2
        0x3f5f03b0
        0x3f65ef20    # 0.89818f
        0x3f6c88a4
        0x3f72c9b0    # 0.94839f
        0x3f78ad04    # 0.97139f
        0x3f7e2d62
        0x3f81a273
        0x3f83f77b    # 1.03099f
        0x3f8613d3
        0x3f87f530
        0x3f8999ed
        0x3f8b00bd
        0x3f8c27fa
        0x3f8d0eaa
        0x3f8db424
        0x3f8e17c2    # 1.1101f
        0x3f8e38da
        0x3f8e17c2    # 1.1101f
        0x3f8db424
        0x3f8d0eaa
        0x3f8c27fa
        0x3f8b00bd
        0x3f8999ed
        0x3f87f530
        0x3f8613d3
        0x3f83f77b    # 1.03099f
        0x3f81a273
    .end array-data
.end method

.method constructor <init>(J)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-wide p1, p0, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->startTime:J

    .line 67
    return-void
.end method


# virtual methods
.method public abstract getScale(J)F
.end method

.method public isDone(J)Z
    .locals 2

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->startTime:J

    sub-long v0, p1, v0

    long-to-int v0, v0

    .line 72
    if-ltz v0, :cond_0

    sget v1, Lcom/google/glass/maps/map/Animations$MarkerAnimation;->TOTAL_TIME:I

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
