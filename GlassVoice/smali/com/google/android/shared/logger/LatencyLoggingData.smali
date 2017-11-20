.class public Lcom/google/android/shared/logger/LatencyLoggingData;
.super Ljava/lang/Object;
.source "LatencyLoggingData.java"


# instance fields
.field public final mEditRequestId:J

.field public final mErrorCode:I

.field public final mIntentType:I

.field public final mLatencyId:J

.field public final mRequestId:J

.field public final mReusedRequestId:J


# direct methods
.method public constructor <init>(J)V
    .locals 11
    .param p1, "requestId"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 19
    const/4 v5, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v6, v3

    move-wide v8, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    .line 20
    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 11
    .param p1, "requestId"    # J
    .param p3, "latencyId"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 23
    const/4 v5, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v8, v6

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    .line 24
    return-void
.end method

.method public constructor <init>(JJI)V
    .locals 11
    .param p1, "requestId"    # J
    .param p3, "latencyId"    # J
    .param p5, "errorCode"    # I

    .prologue
    .line 27
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    .line 28
    return-void
.end method

.method private constructor <init>(JJIJJI)V
    .locals 0
    .param p1, "requestId"    # J
    .param p3, "latencyId"    # J
    .param p5, "errorCode"    # I
    .param p6, "reusedRequestId"    # J
    .param p8, "editRequestId"    # J
    .param p10, "intentType"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    .line 55
    iput-wide p3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    .line 56
    iput p5, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    .line 57
    iput-wide p6, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    .line 58
    iput-wide p8, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mEditRequestId:J

    .line 59
    iput p10, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    .line 60
    return-void
.end method

.method public constructor <init>(JJJ)V
    .locals 11
    .param p1, "requestId"    # J
    .param p3, "latencyId"    # J
    .param p5, "reusedRequestId"    # J

    .prologue
    .line 31
    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, -0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    .line 32
    return-void
.end method

.method public static fromLatencyId(J)Lcom/google/android/shared/logger/LatencyLoggingData;
    .locals 11
    .param p0, "latencyId"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 35
    new-instance v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    const/4 v5, 0x0

    const/4 v10, -0x1

    move-wide v3, p0

    move-wide v6, v1

    move-wide v8, v1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    return-object v0
.end method

.method public static withIntentType(I)Lcom/google/android/shared/logger/LatencyLoggingData;
    .locals 11
    .param p0, "intentType"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 39
    new-instance v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    const/4 v5, 0x0

    move-wide v3, v1

    move-wide v6, v1

    move-wide v8, v1

    move v10, p0

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    if-ne p0, p1, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 81
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 82
    check-cast v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    .line 83
    .local v0, "other":Lcom/google/android/shared/logger/LatencyLoggingData;
    iget v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    iget v4, v0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    iget v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    iget v4, v0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 86
    goto :goto_0

    .line 87
    :cond_5
    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    iget-wide v5, v0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    iget-wide v5, v0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    move v1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_7
    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    iget-wide v5, v0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    const/16 v7, 0x20

    .line 64
    const/16 v0, 0x1f

    .line 65
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 66
    .local v1, "result":I
    iget v2, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    add-int/lit8 v1, v2, 0x1f

    .line 67
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    add-int v1, v2, v3

    .line 68
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    iget-wide v5, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 69
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    iget-wide v5, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 70
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    iget-wide v5, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v1, v2, v3

    .line 71
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "LatencyLoggingData["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 101
    const-string v1, "mRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_0
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 106
    const-string v1, "mLatencyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_1
    iget v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    if-eqz v1, :cond_2

    .line 111
    const-string v1, "mErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 116
    const-string v1, "mReusedRequestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_3
    iget v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 121
    const-string v1, "mIntentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_4
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withEditRequestId(J)Lcom/google/android/shared/logger/LatencyLoggingData;
    .locals 11
    .param p1, "editRequestId"    # J

    .prologue
    .line 43
    new-instance v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    iget v5, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mErrorCode:I

    iget-wide v6, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    iget v10, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    move-wide v8, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    return-object v0
.end method

.method public withErrorCode(I)Lcom/google/android/shared/logger/LatencyLoggingData;
    .locals 11
    .param p1, "errorCode"    # I

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/shared/logger/LatencyLoggingData;

    iget-wide v1, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mRequestId:J

    iget-wide v3, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mLatencyId:J

    iget-wide v6, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mReusedRequestId:J

    iget-wide v8, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mEditRequestId:J

    iget v10, p0, Lcom/google/android/shared/logger/LatencyLoggingData;->mIntentType:I

    move v5, p1

    invoke-direct/range {v0 .. v10}, Lcom/google/android/shared/logger/LatencyLoggingData;-><init>(JJIJJI)V

    return-object v0
.end method
