.class Lcom/google/glass/widget/ClockView$1;
.super Landroid/os/AsyncTask;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/widget/ClockView;->updateTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/ClockView;

.field final synthetic val$currentTime:J


# direct methods
.method constructor <init>(Lcom/google/glass/widget/ClockView;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/ClockView;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/google/glass/widget/ClockView$1;->this$0:Lcom/google/glass/widget/ClockView;

    iput-wide p2, p0, Lcom/google/glass/widget/ClockView$1;->val$currentTime:J

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/ClockView$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-object v0, p0, Lcom/google/glass/widget/ClockView$1;->this$0:Lcom/google/glass/widget/ClockView;

    invoke-virtual {v0}, Lcom/google/glass/widget/ClockView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/glass/widget/ClockView$1;->val$currentTime:J

    invoke-static {v0, v1, v2, v3, v3}, Lcom/google/glass/util/DateHelper;->formattedTime(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/ClockView$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/widget/ClockView$1;->this$0:Lcom/google/glass/widget/ClockView;

    invoke-virtual {v0, p1}, Lcom/google/glass/widget/ClockView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method
