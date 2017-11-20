.class Lcom/google/android/gsf/checkin/CheckinService$1;
.super Lcom/google/android/gsf/checkin/CheckinTask;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/CheckinService;

.field final synthetic val$lastTriggerCount:I


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/CheckinService;I)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    iput p2, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->val$lastTriggerCount:I

    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    .locals 3
    .param p1, "params"    # [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .prologue
    .line 238
    const-string v1, "CheckinService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const-string v1, "CheckinService"

    const-string v2, "task doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_0
    const/4 v0, 0x0

    .line 242
    .local v0, "response":Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$100(Lcom/google/android/gsf/checkin/CheckinService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 243
    const-string v1, "CheckinService"

    const-string v2, "Preparing to send checkin request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v1}, Lcom/google/android/gsf/checkin/EventLogService;->captureLogs(Landroid/content/Context;)V

    .line 245
    invoke-super {p0, p1}, Lcom/google/android/gsf/checkin/CheckinTask;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v1, v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$200(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V

    .line 247
    if-eqz v0, :cond_1

    .line 248
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$302(Z)Z

    goto :goto_0

    .line 251
    :cond_2
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService$1;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$402(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/CheckinTask;)Lcom/google/android/gsf/checkin/CheckinTask;

    .line 257
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$500(Lcom/google/android/gsf/checkin/CheckinService;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->val$lastTriggerCount:I

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/CheckinService;->stopSelf()V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$600(Lcom/google/android/gsf/checkin/CheckinService;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 235
    check-cast p1, Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService$1;->onPostExecute(Lcom/google/android/gsf/checkin/proto/Checkin$AndroidCheckinResponse;)V

    return-void
.end method
