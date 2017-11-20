.class Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation


# instance fields
.field commandName:Ljava/lang/String;

.field installTimeMillis:J

.field lastUsedTimeMillis:J

.field usageCount:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    .line 65
    iput-wide p2, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    .line 66
    iput-wide p4, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    .line 67
    iput-wide p6, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    .line 68
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->commandName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->installTimeMillis:J

    iget-wide v3, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->lastUsedTimeMillis:J

    iget-wide v5, p0, Lcom/google/glass/voice/menu/GlassMenuUsageContract$UsageStatsData;->usageCount:J

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x43

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "[ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
