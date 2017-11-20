.class Lcom/android/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1053
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1102
    :goto_0
    :pswitch_0
    return-void

    .line 1055
    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1058
    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1061
    :pswitch_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1064
    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1067
    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1070
    :pswitch_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/IKeyguardShowCallback;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/IKeyguardShowCallback;)V

    goto :goto_0

    .line 1073
    :pswitch_7
    iget-object v3, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_1

    :goto_2
    invoke-static {v3, v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/keyguard/KeyguardViewMediator;ZZ)V

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    .line 1076
    :pswitch_8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/keyguard/KeyguardViewMediator;)V

    goto :goto_0

    .line 1079
    :pswitch_9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_0

    .line 1082
    :pswitch_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_2

    :goto_3
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/keyguard/KeyguardViewMediator;Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 1085
    :pswitch_b
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 1086
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v2, v0}, Lcom/android/keyguard/KeyguardViewMediator;->access$800(Lcom/android/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1087
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1090
    :pswitch_c
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto :goto_0

    .line 1093
    :pswitch_d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardViewMediator;->handleDispatchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1096
    :pswitch_e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->handleLaunchCamera()V

    goto/16 :goto_0

    .line 1099
    :pswitch_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardViewMediator;->handleDismiss()V

    goto/16 :goto_0

    .line 1053
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
