.class public Lcom/google/glass/home/voice/MainMenuEntityItemView;
.super Lcom/google/glass/entity/EntityItemView;
.source "MainMenuEntityItemView.java"


# static fields
.field private static final MENU_ITEM_ACTION_UNSET:I = -0x1


# instance fields
.field private activity:Lcom/google/glass/app/GlassActivity;

.field private commandType:I

.field private menuItemAction:I

.field private prependEntity:Z

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/google/glass/entity/EntityItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    .line 33
    iput v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    .line 38
    new-instance v0, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 39
    return-void
.end method

.method private getCommandLoggingValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    iget v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    invoke-static {v0, v1}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getCommandLoggingValue(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getCommandLoggingValue(II)Ljava/lang/String;
    .locals 3
    .param p0, "menuItemAction"    # I
    .param p1, "commandType"    # I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 137
    if-eq p0, v0, :cond_0

    .line 138
    sparse-switch p0, :sswitch_data_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x25

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown menu item action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :sswitch_0
    const-string v0, "1"

    .line 167
    :goto_0
    return-object v0

    .line 142
    :sswitch_1
    const-string v0, "2"

    goto :goto_0

    .line 144
    :sswitch_2
    const-string v0, "4"

    goto :goto_0

    .line 146
    :sswitch_3
    const-string v0, "12"

    goto :goto_0

    .line 148
    :sswitch_4
    const-string v0, "3"

    goto :goto_0

    .line 152
    :cond_0
    if-eq p1, v0, :cond_1

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 169
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_1
    const-string v0, "6"

    goto :goto_0

    .line 157
    :pswitch_2
    const-string v0, "5"

    goto :goto_0

    .line 159
    :pswitch_3
    const-string v0, "8"

    goto :goto_0

    .line 161
    :pswitch_4
    const-string v0, "13"

    goto :goto_0

    .line 163
    :pswitch_5
    const-string v0, "14"

    goto :goto_0

    .line 165
    :pswitch_6
    const-string v0, "16"

    goto :goto_0

    .line 167
    :pswitch_7
    const-string v0, "17"

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No entity or mirror command defined!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x8 -> :sswitch_0
        0xe -> :sswitch_4
        0x12 -> :sswitch_1
        0x15 -> :sswitch_3
    .end sparse-switch

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private getParentAdapterView()Landroid/widget/AdapterView;
    .locals 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 129
    .local v0, "viewParent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/AdapterView;

    if-nez v1, :cond_0

    .line 130
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_0
    check-cast v0, Landroid/widget/AdapterView;

    .end local v0    # "viewParent":Landroid/view/ViewParent;
    return-object v0
.end method

.method private logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Lcom/google/glass/userevent/UserEventAction;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {v0, p1, p2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 178
    return-void
.end method


# virtual methods
.method public logConfirm()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 111
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getParentAdapterView()Landroid/widget/AdapterView;

    move-result-object v1

    .line 112
    .local v1, "parentAdapter":Landroid/widget/AdapterView;
    if-eqz v1, :cond_0

    .line 113
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 115
    .local v2, "selectedPosition":I
    const-string v4, "pos"

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "pre"

    aput-object v3, v6, v8

    const/4 v7, 0x1

    iget-boolean v3, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->prependEntity:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    :goto_0
    aput-object v3, v6, v7

    .line 115
    invoke-static {v4, v5, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTupleBuilder(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    .local v0, "eventTuple":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->onConfirmLogData(Ljava/lang/StringBuilder;)V

    .line 121
    sget-object v3, Lcom/google/glass/userevent/UserEventAction;->TOUCH_MENU_ENTITY_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->logUserEvent(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 123
    .end local v0    # "eventTuple":Ljava/lang/StringBuilder;
    .end local v2    # "selectedPosition":I
    :cond_0
    return v8

    .line 117
    .restart local v2    # "selectedPosition":I
    :cond_1
    const-string v3, "0"

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 92
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->logConfirm()Z

    .line 94
    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 95
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    if-eq v1, v2, :cond_0

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/glass/voice/menu/ContactsLauncherUtils;->newContactMenuItem(Landroid/content/Context;ZLcom/google/googlex/glass/common/proto/TimelineNano$Entity;I)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->activity:Lcom/google/glass/app/GlassActivity;

    .line 99
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    .line 106
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 100
    :cond_0
    iget v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    if-eq v1, v2, :cond_1

    .line 101
    iget-object v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->activity:Lcom/google/glass/app/GlassActivity;

    iget v2, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    invoke-virtual {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getEntity()Lcom/google/googlex/glass/common/proto/TimelineNano$Entity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/glass/voice/menu/MirrorCommandMenuItem;->newTouchMenuItem(Landroid/content/Context;ILcom/google/googlex/glass/common/proto/TimelineNano$Entity;)Lcom/google/glass/voice/menu/VoiceMenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    iget-object v3, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->activity:Lcom/google/glass/app/GlassActivity;

    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenuItem;->triggerByTouch(Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/app/GlassActivity;)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No entity or mirror command defined!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onConfirmLogData(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "eventTuple"    # Ljava/lang/StringBuilder;

    .prologue
    .line 77
    const-string v0, "command"

    .line 79
    invoke-direct {p0}, Lcom/google/glass/home/voice/MainMenuEntityItemView;->getCommandLoggingValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 78
    invoke-static {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {p1, v0}, Lcom/google/glass/userevent/UserEventHelper;->appendData(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public setCommandType(I)V
    .locals 2
    .param p1, "commandType"    # I

    .prologue
    .line 64
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    iput p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    .line 66
    return-void
.end method

.method public setGlassActivity(Lcom/google/glass/app/GlassActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/google/glass/app/GlassActivity;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->activity:Lcom/google/glass/app/GlassActivity;

    .line 43
    return-void
.end method

.method public setIsPrepend(Z)V
    .locals 0
    .param p1, "prepended"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->prependEntity:Z

    .line 57
    return-void
.end method

.method public setMenuItemAction(I)V
    .locals 2
    .param p1, "menuItemAction"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->menuItemAction:I

    .line 51
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/google/glass/home/voice/MainMenuEntityItemView;->commandType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/predicates/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method
