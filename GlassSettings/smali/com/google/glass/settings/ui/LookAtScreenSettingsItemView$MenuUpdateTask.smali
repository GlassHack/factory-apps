.class Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;
.super Landroid/os/AsyncTask;
.source "LookAtScreenSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuUpdateTask"
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
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;


# direct methods
.method private constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->this$0:Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;
    .param p2, "x1"    # Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$1;

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;-><init>(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 317
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    return-object v0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->this$0:Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;

    .line 318
    invoke-static {v0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->access$600(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 314
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 324
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->this$0:Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;->access$700(Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView;Z)V

    .line 326
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 314
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/google/glass/settings/ui/LookAtScreenSettingsItemView$MenuUpdateTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
