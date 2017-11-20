.class Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$4;
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
    .line 127
    iput-object p1, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$4;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity$4;->this$0:Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;

    invoke-virtual {v0}, Lcom/google/glass/settings/ui/LookAtScreenPracticeActivity;->onFirstLookAtScreenFailure()V

    .line 131
    return-void
.end method
