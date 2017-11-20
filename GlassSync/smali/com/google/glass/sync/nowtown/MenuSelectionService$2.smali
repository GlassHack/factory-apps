.class Lcom/google/glass/sync/nowtown/MenuSelectionService$2;
.super Lcom/google/glass/util/IntentSender$DefaultIntentSender;
.source "MenuSelectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/MenuSelectionService;->replaceIntentSender()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/MenuSelectionService;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/MenuSelectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/MenuSelectionService;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService$2;->this$0:Lcom/google/glass/sync/nowtown/MenuSelectionService;

    invoke-direct {p0}, Lcom/google/glass/util/IntentSender$DefaultIntentSender;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-super {p0, p1, p2}, Lcom/google/glass/util/IntentSender$DefaultIntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 90
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/util/IntentSender$DefaultIntentSender;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 92
    return-void
.end method
