.class Lcom/google/glass/lockrecovery/TutorialActivity$3;
.super Ljava/lang/Object;
.source "TutorialActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/lockrecovery/TutorialActivity;->onConfirm()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/lockrecovery/TutorialActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/lockrecovery/TutorialActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/lockrecovery/TutorialActivity;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/glass/lockrecovery/TutorialActivity$3;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lcom/google/glass/lockrecovery/RecoveryCodeManager;

    iget-object v1, p0, Lcom/google/glass/lockrecovery/TutorialActivity$3;->this$0:Lcom/google/glass/lockrecovery/TutorialActivity;

    invoke-direct {v0, v1}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;-><init>(Landroid/content/Context;)V

    .line 141
    .local v0, "manager":Lcom/google/glass/lockrecovery/RecoveryCodeManager;
    invoke-virtual {v0}, Lcom/google/glass/lockrecovery/RecoveryCodeManager;->setTutorialCompleted()V

    .line 142
    return-void
.end method
