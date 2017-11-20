.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;
.super Ljava/lang/Object;
.source "LookAtScreenPracticeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onPlayNotificationSound()V

    .line 114
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$2;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$000(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    return-void
.end method
