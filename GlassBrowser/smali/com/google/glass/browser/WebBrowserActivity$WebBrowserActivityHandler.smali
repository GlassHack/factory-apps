.class final Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;
.super Landroid/os/Handler;
.source "WebBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/browser/WebBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WebBrowserActivityHandler"
.end annotation


# static fields
.field private static final MSG_WHAT_ALLOW_CLUTCH_MODE:I = 0x2

.field private static final MSG_WHAT_FINISH_ACTIVITY:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/google/glass/browser/WebBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/browser/WebBrowserActivity;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/browser/WebBrowserActivity;Lcom/google/glass/browser/WebBrowserActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/browser/WebBrowserActivity;
    .param p2, "x1"    # Lcom/google/glass/browser/WebBrowserActivity$1;

    .prologue
    .line 1021
    invoke-direct {p0, p1}, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;-><init>(Lcom/google/glass/browser/WebBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1032
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1042
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget v1, p1, Landroid/os/Message;->what:I

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1034
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-virtual {v0}, Lcom/google/glass/browser/WebBrowserActivity;->finish()V

    .line 1040
    :goto_0
    return-void

    .line 1037
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopIndeterminate()V

    .line 1038
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserActivity;->access$600(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/widget/SliderView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 1039
    iget-object v0, p0, Lcom/google/glass/browser/WebBrowserActivity$WebBrowserActivityHandler;->this$0:Lcom/google/glass/browser/WebBrowserActivity;

    invoke-static {v0}, Lcom/google/glass/browser/WebBrowserActivity;->access$500(Lcom/google/glass/browser/WebBrowserActivity;)Lcom/google/glass/browser/ClutchHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/glass/browser/ClutchHelper;->setClutchModeAllowed(Z)V

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
