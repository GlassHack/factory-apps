.class Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;
.super Ljava/lang/Object;
.source "SendUserFeedbackService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/userfeedback/android/api/SendUserFeedbackService;->startSendingUserFeedback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

.field final synthetic val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

.field final synthetic val$thisService:Landroid/app/Service;


# direct methods
.method constructor <init>(Lcom/google/userfeedback/android/api/SendUserFeedbackService;Lcom/google/userfeedback/android/api/UserFeedbackReport;Landroid/app/Service;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iput-object p2, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    iput-object p3, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$thisService:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private cleanup(Ljava/io/File;)V
    .locals 2
    .param p1, "reportFile"    # Ljava/io/File;

    .prologue
    .line 192
    if-eqz p1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v1, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-static {v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->access$000(Lcom/google/userfeedback/android/api/SendUserFeedbackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->showToast(I)V

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 197
    iget-object v0, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$thisService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    .line 200
    const/4 p1, 0x0

    .line 202
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 162
    new-instance v2, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;

    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    iget-object v5, v5, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->mSpec:Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    invoke-direct {v2, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;-><init>(Lcom/google/userfeedback/android/api/UserFeedbackSpec;)V

    .line 163
    .local v2, "reportBuilder":Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;
    const/4 v3, 0x0

    .line 167
    .local v3, "reportFile":Ljava/io/File;
    :try_start_0
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/userfeedback/android/api/UserFeedbackReport;->setSubmitted(Z)V

    .line 168
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->val$report:Lcom/google/userfeedback/android/api/UserFeedbackReport;

    invoke-virtual {v2, v5}, Lcom/google/userfeedback/android/api/UserFeedbackReportBuilder;->getFormattedFeedbackReport(Lcom/google/userfeedback/android/api/UserFeedbackReport;)Ljava/io/File;

    move-result-object v3

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    .line 170
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    invoke-virtual {v5, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->sendReport(Ljava/io/File;)I

    move-result v5

    div-int/lit8 v4, v5, 0x64

    .line 171
    .local v4, "status":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 172
    iget-object v5, p0, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->this$0:Lcom/google/userfeedback/android/api/SendUserFeedbackService;

    sget v6, Lcom/google/userfeedback/android/api/R$string;->gf_report_being_sent:I

    invoke-static {v5, v6}, Lcom/google/userfeedback/android/api/SendUserFeedbackService;->access$002(Lcom/google/userfeedback/android/api/SendUserFeedbackService;I)I

    .line 179
    .end local v4    # "status":I
    :cond_0
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    .line 185
    .end local v1    # "i":I
    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 186
    return-void

    .line 174
    .restart local v1    # "i":I
    .restart local v4    # "status":I
    :cond_1
    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    .end local v4    # "status":I
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string v6, "GFEEDBACK"

    const-string v7, "IOException: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    goto :goto_1

    .line 181
    :cond_2
    :try_start_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 183
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    invoke-direct {p0, v3}, Lcom/google/userfeedback/android/api/SendUserFeedbackService$1;->cleanup(Ljava/io/File;)V

    throw v5
.end method
