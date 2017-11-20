.class Lcom/google/glass/widget/MessageDialog$1;
.super Landroid/os/Handler;
.source "MessageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/widget/MessageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/widget/MessageDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/widget/MessageDialog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/widget/MessageDialog;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 190
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 192
    :pswitch_0
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog;->dismiss()V

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$000(Lcom/google/glass/widget/MessageDialog;)V

    .line 196
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/MessageDialog$Listener;->onDoneMessageShown()V

    goto :goto_0

    .line 201
    :pswitch_2
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$300(Lcom/google/glass/widget/MessageDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/MessageDialog$Listener;->onDismissed()V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/MessageDialog$1;->this$0:Lcom/google/glass/widget/MessageDialog;

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog;->access$100(Lcom/google/glass/widget/MessageDialog;)Lcom/google/glass/widget/MessageDialog$Params;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/widget/MessageDialog$Params;->access$200(Lcom/google/glass/widget/MessageDialog$Params;)Lcom/google/glass/widget/MessageDialog$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/widget/MessageDialog$Listener;->onDone()V

    goto :goto_0

    .line 190
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
