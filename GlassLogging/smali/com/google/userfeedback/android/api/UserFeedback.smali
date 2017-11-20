.class public Lcom/google/userfeedback/android/api/UserFeedback;
.super Ljava/lang/Object;
.source "UserFeedback.java"


# static fields
.field private static mServiceToastShown:Z

.field private static sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;


# instance fields
.field private isSilentReport:Z

.field private mFeedbacktext:Ljava/lang/String;

.field private mIncludeScreenshot:Z

.field private mIncludeSystemLogs:Z

.field private mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

.field public mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

.field private mReportBuilderTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    sput-object p0, Lcom/google/userfeedback/android/api/UserFeedback;->sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    .line 85
    sput-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    .line 86
    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->isSilentReport:Z

    .line 87
    return-void
.end method

.method private buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "includeScreenshot"    # Z
    .param p3, "includeSystemLogs"    # Z
    .param p4, "feedbackText"    # Ljava/lang/String;
    .param p5, "messageText"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v7, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, p5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 250
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_yes:I

    .line 251
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedback$2;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback$2;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;ZZLjava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/google/userfeedback/android/api/R$string;->gf_no:I

    .line 261
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedback$1;

    invoke-direct {v2, p0}, Lcom/google/userfeedback/android/api/UserFeedback$1;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 269
    .local v6, "alert":Landroid/app/AlertDialog;
    return-object v6
.end method

.method private configureAndSendFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "sendSynchronously"    # Z

    .prologue
    .line 173
    invoke-static {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->defensiveCopyFrom(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 174
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/FeedbackConnectivityReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 175
    invoke-virtual {p0, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->buildAndSubmitReport(Ljava/lang/String;Z)V

    .line 176
    return-void
.end method

.method protected static flushBitmapsOnDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 450
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/google/userfeedback/android/api/UserFeedback;->nullBitmapsRecursively(Landroid/view/View;)V

    .line 451
    return-void
.end method

.method protected static isServiceToastShown()Z
    .locals 1

    .prologue
    .line 418
    sget-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    return v0
.end method

.method private static nullBitmapsRecursively(Landroid/view/View;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 454
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, p0

    .line 455
    check-cast v0, Landroid/view/ViewGroup;

    .line 456
    .local v0, "g":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/userfeedback/android/api/UserFeedback;->nullBitmapsRecursively(Landroid/view/View;)V

    .line 456
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "g":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 460
    check-cast p0, Landroid/widget/ImageView;

    .end local p0    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    :cond_1
    return-void
.end method

.method protected static serviceToastShown()V
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/userfeedback/android/api/UserFeedback;->mServiceToastShown:Z

    .line 426
    return-void
.end method

.method protected static userFeedback()Lcom/google/userfeedback/android/api/UserFeedback;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/google/userfeedback/android/api/UserFeedback;->sUserFeedback:Lcom/google/userfeedback/android/api/UserFeedback;

    return-object v0
.end method


# virtual methods
.method protected blockOnReportConstruction()V
    .locals 3

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 408
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 405
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 406
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    const-string v1, "GFEEDBACK"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected buildAndSubmitReport(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "sendSynchronously"    # Z

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-static {}, Lcom/google/userfeedback/android/api/UserFeedback;->serviceToastShown()V

    .line 290
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    .line 291
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedbackReport;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .line 292
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->isSilentReport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getSelectedAccount()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getSelectedAccount()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    .line 295
    :cond_0
    if-eqz p2, :cond_1

    .line 296
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->buildReportSynchronously(Lcom/google/userfeedback/android/api/UserFeedbackReport;)V

    .line 297
    invoke-virtual {p0, v2, v2, p1, p2}, Lcom/google/userfeedback/android/api/UserFeedback;->submitFeedback(ZZLjava/lang/String;Z)V

    .line 310
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedback$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/userfeedback/android/api/UserFeedback$3;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->buildReportWithListener(Lcom/google/userfeedback/android/api/UserFeedbackReport;Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder$BuilderListener;)V

    goto :goto_0
.end method

.method protected buildReport()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-direct {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    .line 279
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/UserFeedbackReport;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    .line 280
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilder:Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->buildReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    .line 281
    return-void
.end method

.method protected configureFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .locals 2
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->defensiveCopyFrom(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 161
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/userfeedback/android/api/FeedbackConnectivityReceiver;->setEnabled(Landroid/content/Context;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->buildReport()V

    .line 163
    return-void
.end method

.method protected createDialog(Landroid/app/Activity;ZZLjava/lang/String;)Landroid/app/Dialog;
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "includeScreenshot"    # Z
    .param p3, "includeSystemLogs"    # Z
    .param p4, "feedbackText"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForEmptyDescription()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_should_submit_on_empty_description:I

    .line 231
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;

    move-result-object v0

    iget-object v0, v0, Lcom/google/userfeedback/android/api/UserFeedbackReport;->chosenAccount:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->shouldShowPopupForAnonymousSubmission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    sget v0, Lcom/google/userfeedback/android/api/R$string;->gf_should_submit_anonymously:I

    .line 240
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 236
    invoke-direct/range {v0 .. v5}, Lcom/google/userfeedback/android/api/UserFeedback;->buildDialog(Landroid/app/Activity;ZZLjava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 243
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getFeedbackText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mFeedbacktext:Ljava/lang/String;

    return-object v0
.end method

.method protected getReport()Lcom/google/userfeedback/android/api/UserFeedbackReport;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    return-object v0
.end method

.method public getSpec()Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    return-object v0
.end method

.method protected isReportReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 386
    iget-boolean v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->isSilentReport:Z

    if-eqz v1, :cond_1

    .line 390
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReportBuilderTask:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setFeedbackText(Ljava/lang/String;)V
    .locals 3
    .param p1, "feedbackText"    # Ljava/lang/String;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mFeedbacktext:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->isReportReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iput-object p1, v1, Lcom/google/userfeedback/android/api/UserFeedbackReport;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "GFEEDBACK"

    const-string v2, "Race condition made report description to throw an NPE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setIncludeScreenshot(Z)V
    .locals 0
    .param p1, "includeScreenshot"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeScreenshot:Z

    .line 327
    return-void
.end method

.method protected setIncludeSystemLogs(Z)V
    .locals 0
    .param p1, "includeSystemLogs"    # Z

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeSystemLogs:Z

    .line 341
    return-void
.end method

.method protected setUserInputParams(ZZLjava/lang/String;)V
    .locals 0
    .param p1, "includeScreenshot"    # Z
    .param p2, "includeSystemLogs"    # Z
    .param p3, "feedbackText"    # Ljava/lang/String;

    .prologue
    .line 317
    invoke-virtual {p0, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setFeedbackText(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback;->setIncludeScreenshot(Z)V

    .line 319
    invoke-virtual {p0, p2}, Lcom/google/userfeedback/android/api/UserFeedback;->setIncludeSystemLogs(Z)V

    .line 320
    return-void
.end method

.method protected shouldIncludeScreenshot()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeScreenshot:Z

    return v0
.end method

.method protected shouldIncludeSystemLogs()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mIncludeSystemLogs:Z

    return v0
.end method

.method public silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V
    .locals 1
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->isSilentReport:Z

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->configureAndSendFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public silentSubmitFeedbackSynchronously(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V
    .locals 1
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->isSilentReport:Z

    .line 148
    invoke-direct {p0, p1, p2, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->configureAndSendFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;Z)V

    .line 149
    return-void
.end method

.method public startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V
    .locals 1
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/userfeedback/android/api/UserFeedback;->startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;I)V

    .line 99
    return-void
.end method

.method public startFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;I)V
    .locals 3
    .param p1, "spec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .param p2, "requestCode"    # I

    .prologue
    .line 109
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/userfeedback/android/api/UserFeedback;->configureFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/google/userfeedback/android/api/UserFeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 114
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected startSendUserFeedbackIntent()V
    .locals 3

    .prologue
    .line 215
    iget-object v2, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 216
    .local v0, "cx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 217
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    return-void
.end method

.method protected submitFeedback(ZZLjava/lang/String;Z)V
    .locals 2
    .param p1, "includeScreenshot"    # Z
    .param p2, "includeSystemLogs"    # Z
    .param p3, "feedbackText"    # Ljava/lang/String;
    .param p4, "submitSynchronously"    # Z

    .prologue
    .line 184
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/userfeedback/android/api/UserFeedback;->setUserInputParams(ZZLjava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/google/userfeedback/android/api/UserFeedback;->mReport:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setReadyToSubmit(Z)V

    .line 188
    if-eqz p4, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/google/userfeedback/android/api/UserFeedback;->startSendUserFeedbackIntent()V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;

    invoke-direct {v0, p0}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;-><init>(Lcom/google/userfeedback/android/api/UserFeedback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedback$1SubmitTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
