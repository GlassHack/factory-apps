.class Lcom/google/glass/touchpad/ClutchDetector$Handler;
.super Landroid/os/Handler;
.source "ClutchDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/touchpad/ClutchDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handler"
.end annotation


# static fields
.field private static final FOCUS_ON_CENTER_DELAY_MS:J = 0x1eL

.field private static final MSG_WHAT_FOCUS_ON_CENTER:I = 0x1


# instance fields
.field private final clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/google/glass/touchpad/ClutchDetector;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "clutchDetector"    # Lcom/google/glass/touchpad/ClutchDetector;

    .prologue
    .line 534
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 535
    iput-object p2, p0, Lcom/google/glass/touchpad/ClutchDetector$Handler;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    .line 536
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/google/glass/touchpad/ClutchDetector;Lcom/google/glass/touchpad/ClutchDetector$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/google/glass/touchpad/ClutchDetector;
    .param p3, "x2"    # Lcom/google/glass/touchpad/ClutchDetector$1;

    .prologue
    .line 518
    invoke-direct {p0, p1, p2}, Lcom/google/glass/touchpad/ClutchDetector$Handler;-><init>(Landroid/os/Looper;Lcom/google/glass/touchpad/ClutchDetector;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/glass/touchpad/ClutchDetector$Handler;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/touchpad/ClutchDetector$Handler;

    .prologue
    .line 518
    invoke-direct {p0}, Lcom/google/glass/touchpad/ClutchDetector$Handler;->postCenterFocused()V

    return-void
.end method

.method private postCenterFocused()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 546
    invoke-virtual {p0, v2}, Lcom/google/glass/touchpad/ClutchDetector$Handler;->removeMessages(I)V

    .line 547
    const-wide/16 v0, 0x1e

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/glass/touchpad/ClutchDetector$Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 548
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 552
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 560
    new-instance v1, Ljava/lang/IllegalArgumentException;

    iget v2, p1, Landroid/os/Message;->what:I

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown message type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :pswitch_0
    iget-object v1, p0, Lcom/google/glass/touchpad/ClutchDetector$Handler;->clutchDetector:Lcom/google/glass/touchpad/ClutchDetector;

    invoke-static {v1}, Lcom/google/glass/touchpad/ClutchDetector;->access$2100(Lcom/google/glass/touchpad/ClutchDetector;)Lcom/google/glass/touchpad/ClutchDetector$MoveListener;

    move-result-object v0

    .line 555
    .local v0, "moveListener":Lcom/google/glass/touchpad/ClutchDetector$MoveListener;
    if-eqz v0, :cond_0

    .line 556
    invoke-interface {v0}, Lcom/google/glass/touchpad/ClutchDetector$MoveListener;->onCenterFocused()V

    .line 562
    :cond_0
    return-void

    .line 552
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
