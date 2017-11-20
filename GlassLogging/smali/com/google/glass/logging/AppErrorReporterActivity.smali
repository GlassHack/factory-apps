.class public final Lcom/google/glass/logging/AppErrorReporterActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "AppErrorReporterActivity.java"


# static fields
.field static final ANR_CATEGORY_TAG:Ljava/lang/String; = "com.google.glass.logging.ANR_REPORT"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CRASH_CATEGORY_TAG:Ljava/lang/String; = "com.google.glass.logging.CRASH_REPORT"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static autoFinishMs:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 41
    const/16 v0, 0xbb8

    sput v0, Lcom/google/glass/logging/AppErrorReporterActivity;->autoFinishMs:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method private static getCrashData(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 2
    .param p0, "anrInfo"    # Landroid/app/ApplicationErrorReport$AnrInfo;

    .prologue
    .line 119
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->info:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    .line 122
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    .line 123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    .line 124
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const/4 v1, 0x0

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    const-string v1, ""

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationErrorReport$AnrInfo;->activity:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getCrashData(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;
    .locals 2
    .param p0, "crashInfo"    # Landroid/app/ApplicationErrorReport$CrashInfo;

    .prologue
    .line 103
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->newInstance()Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionClassName:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setExceptionMessage(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setStackTrace(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwClassName:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowClassName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwFileName:Ljava/lang/String;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowFileName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwLineNumber:I

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowLineNumber(I)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ApplicationErrorReport$CrashInfo;->throwMethodName:Ljava/lang/String;

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->setThrowMethodName(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackCrashBuilder;->build()Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v0

    return-object v0
.end method

.method static sendReport(Landroid/app/Activity;Landroid/app/ApplicationErrorReport;Lcom/google/userfeedback/android/api/UserFeedback;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "report"    # Landroid/app/ApplicationErrorReport;
    .param p2, "feedback"    # Lcom/google/userfeedback/android/api/UserFeedback;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 56
    sget-object v2, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Received error report: %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget v2, p1, Landroid/app/ApplicationErrorReport;->type:I

    packed-switch v2, :pswitch_data_0

    .line 75
    sget-object v2, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Unhandled ApplicationError type: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p1, Landroid/app/ApplicationErrorReport;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 60
    :pswitch_0
    new-instance v1, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    const-string v2, "com.google.glass.logging.CRASH_REPORT"

    invoke-direct {v1, p0, v8, v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .local v1, "crashSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    iget-object v2, p1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-static {v2}, Lcom/google/glass/logging/AppErrorReporterActivity;->getCrashData(Landroid/app/ApplicationErrorReport$CrashInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 63
    iget-object v2, p1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedback;->silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V

    .line 64
    sget-object v2, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Crash stack trace:\n%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/app/ApplicationErrorReport;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$CrashInfo;->stackTrace:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    .end local v1    # "crashSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    :pswitch_1
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    const-string v2, "com.google.glass.logging.ANR_REPORT"

    invoke-direct {v0, p0, v8, v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "anrSpec":Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    iget-object v2, p1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    invoke-static {v2}, Lcom/google/glass/logging/AppErrorReporterActivity;->getCrashData(Landroid/app/ApplicationErrorReport$AnrInfo;)Lcom/google/userfeedback/android/api/UserFeedbackCrashData;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setCrashData(Lcom/google/userfeedback/android/api/UserFeedbackCrashData;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 70
    iget-object v2, p1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v2, v2, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    invoke-virtual {p2, v0, v2}, Lcom/google/userfeedback/android/api/UserFeedback;->silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V

    .line 71
    sget-object v2, Lcom/google/glass/logging/AppErrorReporterActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "ANR cause: %s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Landroid/app/ApplicationErrorReport;->anrInfo:Landroid/app/ApplicationErrorReport$AnrInfo;

    iget-object v5, v5, Landroid/app/ApplicationErrorReport$AnrInfo;->cause:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/logging/AppErrorReporterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.BUG_REPORT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationErrorReport;

    .line 49
    .local v1, "report":Landroid/app/ApplicationErrorReport;
    if-eqz v1, :cond_0

    .line 50
    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedback;

    invoke-direct {v2}, Lcom/google/userfeedback/android/api/UserFeedback;-><init>()V

    invoke-static {p0, v1, v2}, Lcom/google/glass/logging/AppErrorReporterActivity;->sendReport(Landroid/app/Activity;Landroid/app/ApplicationErrorReport;Lcom/google/userfeedback/android/api/UserFeedback;)V

    .line 52
    :cond_0
    return-void
.end method

.method protected onResumeInternal()V
    .locals 4

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 84
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/google/glass/logging/AppErrorReporterActivity$1;

    invoke-direct {v1, p0}, Lcom/google/glass/logging/AppErrorReporterActivity$1;-><init>(Lcom/google/glass/logging/AppErrorReporterActivity;)V

    sget v2, Lcom/google/glass/logging/AppErrorReporterActivity;->autoFinishMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method
