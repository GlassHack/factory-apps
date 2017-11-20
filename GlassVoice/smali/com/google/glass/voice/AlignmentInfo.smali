.class public Lcom/google/glass/voice/AlignmentInfo;
.super Ljava/lang/Object;
.source "AlignmentInfo.java"


# static fields
.field private static final COMMAND_SEPARATOR:C = ','

.field private static final REMOVE_CHARACTERS_REGEXP:Ljava/lang/String; = "[,:]"

.field private static final SEGMENT_SEPARATOR:C = ':'


# instance fields
.field public final endMillis:J

.field public final score:F

.field public final startMillis:J

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;F)V
    .locals 0
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "score"    # F

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    .line 37
    iput-wide p3, p0, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    .line 38
    iput-object p5, p0, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/google/glass/voice/AlignmentInfo;->score:F

    .line 40
    return-void
.end method

.method public static getRecognizedCommandString(Ljava/util/List;J)Ljava/lang/String;
    .locals 9
    .param p1, "trimmedPrefixLengthMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "recognizedCommands":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/HotwordResult;>;"
    const/16 v8, 0x3a

    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v4, "sb":Ljava/lang/StringBuilder;
    neg-long v0, p1

    .line 56
    .local v0, "currentLength":J
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/glass/voice/HotwordResult;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/HotwordResult;

    .line 58
    .local v3, "result":Lcom/google/glass/voice/HotwordResult;
    invoke-virtual {v3}, Lcom/google/glass/voice/HotwordResult;->getRecognizedCommand()Lcom/google/glass/voice/VoiceCommand;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v5

    const-string v6, "[,:]"

    const-string v7, ""

    .line 59
    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Lcom/google/glass/voice/HotwordResult;->getPhraseStartMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v3}, Lcom/google/glass/voice/HotwordResult;->getPhraseEndMillis()J

    move-result-wide v5

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :cond_0
    invoke-virtual {v3}, Lcom/google/glass/voice/HotwordResult;->getPhraseEndMillis()J

    move-result-wide v5

    add-long/2addr v0, v5

    .line 69
    goto :goto_0

    .line 70
    .end local v3    # "result":Lcom/google/glass/voice/HotwordResult;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static parseRecognizedCommandsString(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "recognizedCommands"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/AlignmentInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 80
    .local v8, "parsedInfos":Ljava/util/List;, "Ljava/util/List<Lcom/google/glass/voice/AlignmentInfo;>;"
    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->omitEmptyStrings()Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 81
    .local v7, "commandSegment":Ljava/lang/String;
    const/16 v0, 0x3a

    .line 82
    invoke-static {v0}, Lcom/google/common/base/Splitter;->on(C)Lcom/google/common/base/Splitter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 83
    .local v9, "segmentParameters":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 84
    .local v5, "literal":Ljava/lang/String;
    new-instance v0, Lcom/google/glass/voice/AlignmentInfo;

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 85
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/glass/voice/AlignmentInfo;-><init>(JJLjava/lang/String;F)V

    .line 84
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v5    # "literal":Ljava/lang/String;
    .end local v7    # "commandSegment":Ljava/lang/String;
    .end local v9    # "segmentParameters":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v8
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/google/glass/voice/AlignmentInfo;->startMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-wide v1, p0, Lcom/google/glass/voice/AlignmentInfo;->endMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/google/glass/voice/AlignmentInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v1, p0, Lcom/google/glass/voice/AlignmentInfo;->score:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
