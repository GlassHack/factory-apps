.class public Lcom/google/glass/voice/QualificationUtils;
.super Ljava/lang/Object;
.source "SourceFile"


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

    .prologue
    .line 22
    invoke-static {p1, p2, p3, p4}, Lcom/google/glass/deferredcontent/GlasswareMessagesLoadingTask;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getQualifiedNameImmediatelyInternal(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 27
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->getDisplayName(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Ljava/lang/String;

    move-result-object v1

    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/google/glass/voice/QualificationUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No name to display for entity; cannot qualify."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    const-string v0, ""

    .line 53
    :goto_0
    return-object v0

    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;->getType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 35
    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->isPlusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/google/glass/entity/EntityUtils;->isFocusEntity(Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 36
    goto :goto_0

    .line 40
    :cond_2
    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/google/glass/voice/QualificationUtils;->getGlasswareName(Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 45
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 46
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 49
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v0, v1

    .line 50
    goto :goto_0

    .line 53
    :cond_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
