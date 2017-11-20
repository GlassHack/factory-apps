.class public abstract Lcom/google/glass/tutorial/Tutorial;
.super Ljava/lang/Object;
.source "Tutorial.java"


# instance fields
.field private final actionString:I

.field private completed:Z

.field private final contentString:I

.field protected final context:Landroid/content/Context;

.field private final dataSetObservable:Landroid/database/DataSetObservable;

.field private final soundManager:Lcom/google/glass/sound/SoundManager;

.field private final summaryIcon:I

.field private final summaryString:I

.field private final titleIcon:I

.field private final titleString:I

.field private final tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

.field private final type:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private visible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;IIIIII)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .param p3, "type"    # Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .param p4, "summaryIcon"    # I
    .param p5, "summaryString"    # I
    .param p6, "titleIcon"    # I
    .param p7, "titleString"    # I
    .param p8, "contentString"    # I
    .param p9, "actionString"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->dataSetObservable:Landroid/database/DataSetObservable;

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/tutorial/Tutorial;->visible:Z

    .line 50
    iput-object p1, p0, Lcom/google/glass/tutorial/Tutorial;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/google/glass/tutorial/Tutorial;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 52
    iput-object p3, p0, Lcom/google/glass/tutorial/Tutorial;->type:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    .line 53
    iput p4, p0, Lcom/google/glass/tutorial/Tutorial;->summaryIcon:I

    .line 54
    iput p5, p0, Lcom/google/glass/tutorial/Tutorial;->summaryString:I

    .line 55
    iput p6, p0, Lcom/google/glass/tutorial/Tutorial;->titleIcon:I

    .line 56
    iput p7, p0, Lcom/google/glass/tutorial/Tutorial;->titleString:I

    .line 57
    iput p8, p0, Lcom/google/glass/tutorial/Tutorial;->contentString:I

    .line 58
    iput p9, p0, Lcom/google/glass/tutorial/Tutorial;->actionString:I

    .line 59
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/tutorial/Tutorial;->completed:Z

    .line 62
    new-instance v0, Lcom/google/glass/tutorial/TutorialStatusContract;

    invoke-direct {v0}, Lcom/google/glass/tutorial/TutorialStatusContract;-><init>()V

    iput-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    .line 63
    return-void
.end method


# virtual methods
.method protected final dispatchOnClick()Z
    .locals 6

    .prologue
    .line 127
    iget-object v1, p0, Lcom/google/glass/tutorial/Tutorial;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/glass/tutorial/Tutorial;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_ITEM_SELECTED:Lcom/google/glass/userevent/UserEventAction;

    const-string v3, "i"

    .line 130
    invoke-virtual {p0}, Lcom/google/glass/tutorial/Tutorial;->getEventActionValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    .line 129
    invoke-static {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-virtual {v1, v2, v3}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/tutorial/Tutorial;->onClick()Z

    move-result v0

    .line 133
    .local v0, "success":Z
    iget-object v1, p0, Lcom/google/glass/tutorial/Tutorial;->soundManager:Lcom/google/glass/sound/SoundManager;

    if-eqz v1, :cond_1

    .line 134
    iget-object v2, p0, Lcom/google/glass/tutorial/Tutorial;->soundManager:Lcom/google/glass/sound/SoundManager;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 136
    :cond_1
    return v0

    .line 134
    :cond_2
    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISALLOWED_ACTION:Lcom/google/glass/sound/SoundManager$SoundId;

    goto :goto_0
.end method

.method public getActionString()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->actionString:I

    return v0
.end method

.method public getContentString()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->contentString:I

    return v0
.end method

.method protected abstract getEventActionValue()Ljava/lang/String;
.end method

.method public getSummaryIcon()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->summaryIcon:I

    return v0
.end method

.method public getSummaryString()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->summaryString:I

    return v0
.end method

.method public getTitleIcon()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->titleIcon:I

    return v0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/glass/tutorial/Tutorial;->titleString:I

    return v0
.end method

.method public getTutorialType()Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->type:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    return-object v0
.end method

.method public final isCompleted()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/google/glass/tutorial/Tutorial;->completed:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/google/glass/tutorial/Tutorial;->visible:Z

    return v0
.end method

.method protected loadCompletedState()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->tutorialStatusContract:Lcom/google/glass/tutorial/TutorialStatusContract;

    iget-object v1, p0, Lcom/google/glass/tutorial/Tutorial;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/tutorial/Tutorial;->type:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/tutorial/TutorialStatusContract;->isComplete(Landroid/content/ContentResolver;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/glass/tutorial/Tutorial;->setCompleted(Z)V

    .line 97
    return-void
.end method

.method protected final notifyChange()V
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 162
    return-void
.end method

.method protected abstract onClick()Z
.end method

.method protected onFocused()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected onUnfocus()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public final registerChangeObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public abstract registerForChangeNotifications()V
.end method

.method protected final setCompleted(Z)V
    .locals 0
    .param p1, "completed"    # Z

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/google/glass/tutorial/Tutorial;->completed:Z

    .line 102
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/google/glass/tutorial/Tutorial;->visible:Z

    if-eq v0, p1, :cond_0

    .line 117
    iput-boolean p1, p0, Lcom/google/glass/tutorial/Tutorial;->visible:Z

    .line 118
    invoke-virtual {p0}, Lcom/google/glass/tutorial/Tutorial;->notifyChange()V

    .line 120
    :cond_0
    return-void
.end method

.method public final unregisterChangeObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/tutorial/Tutorial;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 157
    return-void
.end method

.method public abstract unregisterForChangeNotifications()V
.end method
