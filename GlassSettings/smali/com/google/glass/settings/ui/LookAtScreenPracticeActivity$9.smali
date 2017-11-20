.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;
.super Ljava/lang/Object;
.source "LookAtScreenPracticeActivity.java"

# interfaces
.implements Lcom/google/android/glass/eye/EyeGestureManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->createLookAtScreenListener()Lcom/google/android/glass/eye/EyeGestureManager$Listener;
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
    .line 335
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetected(Lcom/google/android/glass/eye/EyeGesture;)V
    .locals 2
    .param p1, "gesture"    # Lcom/google/android/glass/eye/EyeGesture;

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    iget-boolean v0, v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenDetected:Z

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->lookAtScreenDetected:Z

    .line 342
    invoke-static {}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$9;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-static {v1}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->access$500(Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 344
    :cond_0
    return-void
.end method
