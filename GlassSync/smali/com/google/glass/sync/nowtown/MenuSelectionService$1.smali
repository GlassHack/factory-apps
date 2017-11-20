.class Lcom/google/glass/sync/nowtown/MenuSelectionService$1;
.super Ljava/lang/Object;
.source "MenuSelectionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/nowtown/MenuSelectionService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/nowtown/MenuSelectionService;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/nowtown/MenuSelectionService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/nowtown/MenuSelectionService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;->this$0:Lcom/google/glass/sync/nowtown/MenuSelectionService;

    iput-object p2, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;->this$0:Lcom/google/glass/sync/nowtown/MenuSelectionService;

    iget-object v1, p0, Lcom/google/glass/sync/nowtown/MenuSelectionService$1;->val$intent:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/google/glass/sync/nowtown/MenuSelectionService;->access$000(Lcom/google/glass/sync/nowtown/MenuSelectionService;Landroid/content/Intent;)V

    .line 44
    return-void
.end method
