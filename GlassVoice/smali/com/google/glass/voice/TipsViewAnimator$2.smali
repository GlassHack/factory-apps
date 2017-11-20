.class Lcom/google/glass/voice/TipsViewAnimator$2;
.super Ljava/lang/Object;
.source "TipsViewAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/TipsViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/TipsViewAnimator;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/TipsViewAnimator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/TipsViewAnimator;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/voice/TipsViewAnimator$2;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/TipsViewAnimator$2;->this$0:Lcom/google/glass/voice/TipsViewAnimator;

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightTip()V

    .line 91
    return-void
.end method
