.class Lcom/google/glass/touchpad/ClutchDetector$FingerListener;
.super Ljava/lang/Object;
.source "ClutchDetector.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/touchpad/ClutchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/touchpad/ClutchDetector;


# direct methods
.method private constructor <init>(Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p2, "x1"    # Lcom/google/glass/touchpad/ClutchDetector$1;

    .prologue
    .line 360
    invoke-direct {p0, p1}, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;-><init>(Lcom/google/glass/touchpad/ClutchDetector;)V

    return-void
.end method


# virtual methods
.method public onFingerCountChanged(II)V
    .locals 6
    .param p1, "previousCount"    # I
    .param p2, "currentCount"    # I

    .prologue
    const/4 v5, 0x1

    .line 363
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$300(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$500(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onFingerCountChanged(previousCount: [%s], currentCount: [%s]). isInClutchMode: [%s]"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 367
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v4}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 366
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    if-ge p2, v5, :cond_2

    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$600(Lcom/google/glass/touchpad/ClutchDetector;)V

    goto :goto_0

    .line 371
    :cond_2
    if-le p2, v5, :cond_0

    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$400(Lcom/google/glass/touchpad/ClutchDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$700(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/touchpad/ClutchDetector$StateListener;->isClutchModeAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0, v5}, Lcom/google/glass/touchpad/ClutchDetector;->access$402(Lcom/google/glass/touchpad/ClutchDetector;Z)Z

    .line 373
    iget-object v0, p0, Lcom/google/glass/touchpad/ClutchDetector$FingerListener;->this$0:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v0}, Lcom/google/glass/touchpad/ClutchDetector;->access$700(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$StateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/touchpad/ClutchDetector$StateListener;->onClutchModeEntered()V

    goto :goto_0
.end method
