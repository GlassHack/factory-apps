.class public Lcom/google/glass/tutorial/TutorialApplication;
.super Lcom/google/glass/app/GlassApplication;
.source "TutorialApplication.java"


# instance fields
.field private tutorialManager:Lcom/google/glass/tutorial/TutorialManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/glass/app/GlassApplication;-><init>()V

    return-void
.end method

.method public static from(Landroid/content/Context;)Lcom/google/glass/tutorial/TutorialApplication;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "applicationContext":Landroid/content/Context;
    instance-of v1, v0, Lcom/google/glass/tutorial/TutorialApplication;

    if-eqz v1, :cond_0

    .line 38
    check-cast v0, Lcom/google/glass/tutorial/TutorialApplication;

    .end local v0    # "applicationContext":Landroid/content/Context;
    return-object v0

    .line 40
    .restart local v0    # "applicationContext":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context must be a child of the TutorialApplication context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getTutorialManager()Lcom/google/glass/tutorial/TutorialManager;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialApplication;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/google/glass/tutorial/TutorialManager;

    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v1

    new-instance v2, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/tutorial/TutorialManager;-><init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;)V

    iput-object v0, p0, Lcom/google/glass/tutorial/TutorialApplication;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialApplication;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    return-object v0
.end method

.method public setTutorialManager(Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p1, "tutorialManager"    # Lcom/google/glass/tutorial/TutorialManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialApplication;->tutorialManager:Lcom/google/glass/tutorial/TutorialManager;

    .line 19
    return-void
.end method
