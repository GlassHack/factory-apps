.class Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;
.super Landroid/os/AsyncTask;
.source "WinkSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/WinkSettingsItemView;
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;Lcom/google/glass/settings/ui/WinkSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/WinkSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/WinkSettingsItemView$1;

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;-><init>(Lcom/google/glass/settings/ui/WinkSettingsItemView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 274
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-static {v0}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$600(Lcom/google/glass/settings/ui/WinkSettingsItemView;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 271
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->this$0:Lcom/google/glass/settings/ui/WinkSettingsItemView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/WinkSettingsItemView;->access$500(Lcom/google/glass/settings/ui/WinkSettingsItemView;Z)V

    .line 282
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 271
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/WinkSettingsItemView$SettingsUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
