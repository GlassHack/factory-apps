.class public Lcom/google/glass/tutorial/tutorials/WinkTutorial;
.super Lcom/google/glass/tutorial/Tutorial;
.source "WinkTutorial.java"


# instance fields
.field private final observer:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 27
    sget-object v3, Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;->Wink:Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;

    sget v4, Lcom/google/glass/tutorial/R$drawable;->ic_wink_50:I

    sget v5, Lcom/google/glass/tutorial/R$string;->tutorial_wink_summary:I

    sget v6, Lcom/google/glass/tutorial/R$drawable;->ic_wink_50:I

    sget v7, Lcom/google/glass/tutorial/R$string;->tutorial_wink_title:I

    sget v8, Lcom/google/glass/tutorial/R$string;->tutorial_wink_message:I

    sget v9, Lcom/google/glass/tutorial/R$string;->tutorial_tap_to_setup:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/glass/tutorial/Tutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/glass/tutorial/TutorialStatusContract$TutorialType;IIIIII)V

    .line 19
    new-instance v0, Lcom/google/glass/tutorial/tutorials/WinkTutorial$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/glass/tutorial/tutorials/WinkTutorial$1;-><init>(Lcom/google/glass/tutorial/tutorials/WinkTutorial;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->observer:Landroid/database/ContentObserver;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/tutorials/WinkTutorial;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/tutorials/WinkTutorial;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->notifyChange()V

    return-void
.end method


# virtual methods
.method protected getEventActionValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "k"

    return-object v0
.end method

.method protected onClick()Z
    .locals 2

    .prologue
    .line 40
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.glass.action.ACTION_WINK_CALIBRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    const/4 v1, 0x1

    return v1
.end method

.method public registerForChangeNotifications()V
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/glass/tutorial/TutorialStatusContract;->URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 50
    return-void
.end method

.method public unregisterForChangeNotifications()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/tutorials/WinkTutorial;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 55
    return-void
.end method
