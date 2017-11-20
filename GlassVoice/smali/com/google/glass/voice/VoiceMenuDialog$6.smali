.class Lcom/google/glass/voice/VoiceMenuDialog$6;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;-><init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private callback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->callback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    if-eq v0, v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$200(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->callback:Lcom/google/glass/voice/VoiceMenuDialog$OverflowMenuCallback;

    .line 383
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$400(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/TipsViewAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/TipsViewAnimator;->hideSwipeRightTip()V

    .line 384
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1000(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/android/glass/widget/CardScrollView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$6;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1100(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MENU_SWIPE_FOR_ALL_CONTACTS:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 387
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
