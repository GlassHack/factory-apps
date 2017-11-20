.class public Lcom/android/systemui/statusbar/BaseStatusBar$H;
.super Landroid/os/Handler;
.source "BaseStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "m"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 554
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 582
    :cond_0
    :goto_0
    return-void

    .line 556
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->toggleRecentsActivity()V

    goto :goto_0

    .line 559
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->closeRecents()V

    goto :goto_0

    .line 562
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->preloadRecentTasksList()V

    goto :goto_0

    .line 565
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->cancelPreloadingRecentTasksList()V

    goto :goto_0

    .line 569
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isAssistantAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 571
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onShowSearchPanel()V

    goto :goto_0

    .line 576
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/SearchPanelView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mSearchPanelView:Lcom/android/systemui/SearchPanelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/SearchPanelView;->show(ZZ)V

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$H;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->onHideSearchPanel()V

    goto :goto_0

    .line 554
    :pswitch_data_0
    .packed-switch 0x3fc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
