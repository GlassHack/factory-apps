.class public Lcom/google/glass/voice/QualificationUtils;
.super Ljava/lang/Object;
.source "QualificationUtils.java"


# static fields
.field private static final INSTANCE:Lcom/google/glass/voice/QualificationUtils;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/QualificationUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 17
    new-instance v0, Lcom/google/glass/voice/QualificationUtils;

    invoke-direct {v0}, Lcom/google/glass/voice/QualificationUtils;-><init>()V

    sput-object v0, Lcom/google/glass/voice/QualificationUtils;->INSTANCE:Lcom/google/glass/voice/QualificationUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualifiedNameImmediately(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    .prologue
    .line 76
    sget-object v0, Lcom/google/glass/voice/QualificationUtils;->INSTANCE:Lcom/google/glass/voice/QualificationUtils;

    invoke-virtual {v0, p0, p1}, Lcom/google/glass/voice/QualificationUtils;->getQualifiedNameImmediatelyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .param p3, "timeoutMs"    # J
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getQualifiedNameImmediatelyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entity"    # Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 27
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 30
    sget-object v3, Lcom/google/glass/voice/QualificationUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No name to display for entity; cannot qualify."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const-string v0, ""

    .line 53
    .end local v0    # "displayName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 34
    .restart local v0    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 35
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 40
    :cond_2
    const-wide/16 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v3, v4}, Lcom/google/glass/voice/QualificationUtils;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    .local v2, "glasswareName":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 49
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    .end local v2    # "glasswareName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, ""

    .restart local v2    # "glasswareName":Ljava/lang/String;
    goto :goto_1
.end method
