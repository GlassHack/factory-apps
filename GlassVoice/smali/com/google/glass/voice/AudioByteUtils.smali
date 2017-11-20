.class public final Lcom/google/glass/voice/AudioByteUtils;
.super Ljava/lang/Object;
.source "AudioByteUtils.java"


# static fields
.field private static final BYTES_PER_SAMPLE:F = 2.0f

.field private static final HOTWORD_START_BOUND_FUZZ_FACTOR_MS:I = 0x64

.field public static final MILLIS_PER_SECOND:J

.field public static final READ_BUFFER_SIZE:I = 0xa0


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static getByteLength(J)I
    .locals 2
    .param p0, "millis"    # J

    .prologue
    .line 46
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(JJ)I

    move-result v0

    return v0
.end method

.method public static getByteLength(JJ)I
    .locals 3
    .param p0, "millis"    # J
    .param p2, "sampleRate"    # J

    .prologue
    .line 58
    const/high16 v0, 0x40000000    # 2.0f

    long-to-float v1, p2

    mul-float/2addr v0, v1

    long-to-float v1, p0

    mul-float/2addr v0, v1

    sget-wide v1, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static getByteLength(Lcom/google/glass/voice/HotwordResult;)I
    .locals 4
    .param p0, "hotwordResult"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/glass/voice/HotwordResult;->getPhraseDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    .line 41
    invoke-static {v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getByteLength(J)I

    move-result v0

    return v0
.end method

.method public static getMillis(J)J
    .locals 2
    .param p0, "byteLength"    # J

    .prologue
    .line 50
    const-wide/16 v0, 0x3e80

    invoke-static {p0, p1, v0, v1}, Lcom/google/glass/voice/AudioByteUtils;->getMillis(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMillis(JJ)J
    .locals 3
    .param p0, "byteLength"    # J
    .param p2, "sampleRate"    # J

    .prologue
    .line 66
    sget-wide v0, Lcom/google/glass/voice/AudioByteUtils;->MILLIS_PER_SECOND:J

    mul-long/2addr v0, p0

    long-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    long-to-float v2, p2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method
