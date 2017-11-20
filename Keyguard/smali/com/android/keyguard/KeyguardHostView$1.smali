.class Lcom/android/keyguard/KeyguardHostView$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$000(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->access$002(Lcom/android/keyguard/KeyguardHostView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 262
    :cond_0
    return-void
.end method

.method onMusicClientIdChanged(IZLandroid/app/PendingIntent;)V
    .locals 4
    .param p1, "clientGeneration"    # I
    .param p2, "clearing"    # Z
    .param p3, "intent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x2

    .line 273
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget v1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_1

    .line 274
    :cond_0
    const-string v2, "KeyguardHostView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_5

    const-string v1, "hide"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " transport, gen:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iput p1, v1, Lcom/android/keyguard/KeyguardHostView;->mClientGeneration:I

    .line 277
    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 280
    .local v0, "newState":I
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 281
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 282
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_3

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: transport state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    .line 285
    :cond_4
    return-void

    .line 274
    .end local v0    # "newState":I
    :cond_5
    const-string v1, "show"

    goto :goto_0

    .line 277
    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onMusicPlaybackStateChanged(IJ)V
    .locals 4
    .param p1, "playbackState"    # I
    .param p2, "eventTime"    # J

    .prologue
    .line 288
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_0

    const-string v1, "KeyguardHostView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    invoke-static {p1}, Lcom/android/keyguard/KeyguardHostView;->access$400(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    .line 292
    .local v0, "newState":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardHostView;->access$200(Lcom/android/keyguard/KeyguardHostView;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardHostView;->access$202(Lcom/android/keyguard/KeyguardHostView;I)I

    .line 294
    sget-boolean v1, Lcom/android/keyguard/KeyguardHostView;->DEBUGXPORT:Z

    if-eqz v1, :cond_1

    const-string v1, "KeyguardHostView"

    const-string v2, "update widget: play state changed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardHostView;->access$300(Lcom/android/keyguard/KeyguardHostView;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardHostView;->post(Ljava/lang/Runnable;)Z

    .line 298
    .end local v0    # "newState":I
    :cond_2
    return-void

    .line 290
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$1;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardMultiUserSelectorView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardMultiUserSelectorView;->finalizeActiveUserView(Z)V

    .line 268
    :cond_0
    return-void
.end method
