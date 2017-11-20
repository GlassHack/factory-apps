.class Lcom/google/glass/widget/GlassTipsManager$4;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/GlassTipsManager;

.field final synthetic val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

.field final synthetic val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager$4;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    iput-object p2, p0, Lcom/google/glass/widget/GlassTipsManager$4;->val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iput-object p3, p0, Lcom/google/glass/widget/GlassTipsManager$4;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 145
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassTipsManager$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager$4;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v0}, Lcom/google/glass/widget/GlassTipsManager;->access$700(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager$4;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    invoke-static {v1}, Lcom/google/glass/widget/GlassTipsManager;->access$600(Lcom/google/glass/widget/GlassTipsManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager$4;->val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iget-object v2, v2, Lcom/google/glass/widget/GlassTipsManager$TipsType;->settingsName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/util/SettingsContract;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 145
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/glass/widget/GlassTipsManager$4;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 153
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager$4;->this$0:Lcom/google/glass/widget/GlassTipsManager;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager$4;->val$tipsType:Lcom/google/glass/widget/GlassTipsManager$TipsType;

    iget-object v3, p0, Lcom/google/glass/widget/GlassTipsManager$4;->val$tipsCondition:Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    invoke-static {v1, v0, v2, v3}, Lcom/google/glass/widget/GlassTipsManager;->access$800(Lcom/google/glass/widget/GlassTipsManager;ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 155
    return-void

    .line 153
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
