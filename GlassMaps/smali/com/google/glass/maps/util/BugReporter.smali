.class public Lcom/google/glass/maps/util/BugReporter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/util/BugReporter;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendMapsBugreport(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 32
    sget-object v0, Lcom/google/glass/maps/util/BugReporter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Sending Maps bugreport."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/android/maps/driveabout/g/f;->e()Lcom/google/android/maps/driveabout/g/f;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd_kk.mm.ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 37
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/g/f;->d()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/b;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    .line 38
    new-instance v4, Ljava/io/File;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xe

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "event-log-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".xml"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    :try_start_0
    sget-object v2, Lcom/google/glass/maps/util/BugReporter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Dumping to: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-interface {v2, v3, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {v0, v4}, Lcom/google/android/maps/driveabout/g/f;->a(Ljava/io/File;)V

    .line 42
    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 48
    invoke-static {}, Lcom/google/glass/feedback/FeedbackHelperProvider;->getInstance()Lcom/google/glass/feedback/FeedbackHelperProvider;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/glass/feedback/FeedbackHelperProvider;->from(Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/feedback/FeedbackHelper;

    move-result-object v0

    .line 50
    invoke-static {}, Lcom/google/glass/feedback/FeedbackParams;->newBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    const-string v3, "GlassMaps"

    .line 51
    invoke-virtual {v2, v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setTitle(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    .line 52
    invoke-virtual {v2, v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setRecoveryAction(Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2, v7}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldBugReport(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 54
    invoke-virtual {v2, v7}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldScreenshot(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 55
    invoke-virtual {v2, v7}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setAllowVoiceNote(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 56
    invoke-virtual {v2, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setAdditionalFiles(Ljava/lang/Iterable;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v1

    .line 49
    invoke-virtual {v0, p0, v1}, Lcom/google/glass/feedback/FeedbackHelper;->showEngFeedback(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)V

    .line 59
    :cond_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    sget-object v2, Lcom/google/glass/maps/util/BugReporter;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Failed to dump Maps event log bug report."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
