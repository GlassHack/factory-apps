.class Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;
.super Landroid/os/AsyncTask;
.source "HeadWakeSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsUpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Float;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$1;

    .prologue
    .line 338
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 341
    const/4 v1, 0x0

    .line 343
    .local v1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Float;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 344
    invoke-static {}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Fetching head wake settings."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$600(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Z

    move-result v0

    .line 346
    .local v0, "isEnabled":Z
    iget-object v3, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    invoke-static {v3}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$100(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/settings/HeadGestureUtils;->getHeadWakeAngleDegsFromSettings(Landroid/content/Context;)F

    move-result v2

    .line 348
    .local v2, "wakeAngle":F
    invoke-static {}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Settings fetched [isEnabled=%s, wakeAngle=%s]."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 352
    .end local v0    # "isEnabled":Z
    .end local v2    # "wakeAngle":F
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, "result":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    sget v1, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {v0, v1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$300(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;Z)V

    .line 359
    iget-object v1, p0, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;->access$700(Lcom/google/glass/settings/ui/HeadWakeSettingsItemView;F)V

    .line 361
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 338
    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/HeadWakeSettingsItemView$SettingsUpdateTask;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
