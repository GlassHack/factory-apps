.class public Lcom/google/glass/tutorial/TutorialManager;
.super Ljava/lang/Object;
.source "TutorialManager.java"


# static fields
.field private static final KEY_DISMISSED:Ljava/lang/String; = "dismissed"

.field private static final KEY_FIRST_LOAD:Ljava/lang/String; = "firstLoad"

.field private static final MSG_REFRESH:I = 0x1

.field private static final ONLY_VISIBLE_TUTORIALS:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARED_PREF_FILE:Ljava/lang/String; = "tutorial.sharedPref"

.field public static final TUTORIAL_TIMEOUT:J

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private allowDismiss:Z

.field private final clock:Lcom/google/glass/time/Clock;

.field private final contentObserver:Landroid/database/DataSetObserver;

.field private final context:Landroid/content/Context;

.field private final dataSetObservable:Landroid/database/DataSetObservable;

.field private dismissed:Z

.field private firstLoadTime:J

.field private final refreshCompletedStateRunnable:Ljava/lang/Runnable;

.field private refreshForTimeoutHandler:Landroid/os/Handler;

.field private timedOut:Z

.field private tutorials:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation
.end field

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/tutorial/TutorialManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/tutorial/TutorialManager;->TUTORIAL_TIMEOUT:J

    .line 54
    new-instance v0, Lcom/google/glass/tutorial/TutorialManager$1;

    invoke-direct {v0}, Lcom/google/glass/tutorial/TutorialManager$1;-><init>()V

    sput-object v0, Lcom/google/glass/tutorial/TutorialManager;->ONLY_VISIBLE_TUTORIALS:Lcom/google/common/base/Predicate;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;

    .prologue
    .line 146
    invoke-static {p1, p3}, Lcom/google/glass/tutorial/TutorialManager;->buildListOfTutorials(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/tutorial/TutorialManager;-><init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/collect/ImmutableList;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/time/Clock;Lcom/google/glass/userevent/UserEventHelper;Lcom/google/common/collect/ImmutableList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clock"    # Lcom/google/glass/time/Clock;
    .param p3, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/time/Clock;",
            "Lcom/google/glass/userevent/UserEventHelper;",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p4, "tutorials":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/glass/tutorial/Tutorial;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Lcom/google/glass/tutorial/TutorialManager$2;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/TutorialManager$2;-><init>(Lcom/google/glass/tutorial/TutorialManager;)V

    iput-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->refreshForTimeoutHandler:Landroid/os/Handler;

    .line 85
    new-instance v1, Lcom/google/glass/tutorial/TutorialManager$3;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/TutorialManager$3;-><init>(Lcom/google/glass/tutorial/TutorialManager;)V

    iput-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->refreshCompletedStateRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/google/glass/tutorial/TutorialManager$4;

    invoke-direct {v1, p0}, Lcom/google/glass/tutorial/TutorialManager$4;-><init>(Lcom/google/glass/tutorial/TutorialManager;)V

    iput-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->contentObserver:Landroid/database/DataSetObserver;

    .line 126
    new-instance v1, Landroid/database/DataSetObservable;

    invoke-direct {v1}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->dataSetObservable:Landroid/database/DataSetObservable;

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/glass/tutorial/TutorialManager;->allowDismiss:Z

    .line 143
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/glass/tutorial/TutorialManager;->firstLoadTime:J

    .line 152
    iput-object p1, p0, Lcom/google/glass/tutorial/TutorialManager;->context:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/google/glass/tutorial/TutorialManager;->clock:Lcom/google/glass/time/Clock;

    .line 154
    iput-object p3, p0, Lcom/google/glass/tutorial/TutorialManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 155
    iput-object p4, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    .line 157
    invoke-virtual {p0}, Lcom/google/glass/tutorial/TutorialManager;->refreshCompletedState()V

    .line 159
    invoke-virtual {p4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    .line 160
    .local v0, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialManager;->contentObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lcom/google/glass/tutorial/Tutorial;->registerChangeObserver(Landroid/database/DataSetObserver;)V

    .line 161
    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->registerForChangeNotifications()V

    goto :goto_0

    .line 163
    .end local v0    # "tutorial":Lcom/google/glass/tutorial/Tutorial;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/tutorial/TutorialManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->refreshForTimeoutHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/tutorial/TutorialManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/google/glass/tutorial/TutorialManager;->firstLoadTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/google/glass/tutorial/TutorialManager;J)J
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/google/glass/tutorial/TutorialManager;->firstLoadTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/google/glass/tutorial/TutorialManager;)Lcom/google/glass/time/Clock;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->clock:Lcom/google/glass/time/Clock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/tutorial/TutorialManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/glass/tutorial/TutorialManager;->timedOut:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/tutorial/TutorialManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/google/glass/tutorial/TutorialManager;->timedOut:Z

    return p1
.end method

.method static synthetic access$400()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/glass/tutorial/TutorialManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialManager;->logTimeout()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/glass/tutorial/TutorialManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialManager;->notifyObservers()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/glass/tutorial/TutorialManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/tutorial/TutorialManager;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    return-object v0
.end method

.method private static buildListOfTutorials(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userEventHelper"    # Lcom/google/glass/userevent/UserEventHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/glass/userevent/UserEventHelper;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 170
    .local v0, "builder":Lcom/google/common/collect/ImmutableList$Builder;, "Lcom/google/common/collect/ImmutableList$Builder<Lcom/google/glass/tutorial/Tutorial;>;"
    new-instance v1, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/BluetoothTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 172
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->CVT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/AddContactsTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 175
    :cond_0
    new-instance v1, Lcom/google/glass/tutorial/tutorials/OnHeadDetectionTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/OnHeadDetectionTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 177
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->WINK:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    invoke-static {p0}, Lcom/google/android/glass/eye/EyeGestureManager;->from(Landroid/content/Context;)Lcom/google/android/glass/eye/EyeGestureManager;

    move-result-object v1

    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    invoke-virtual {v1, v2}, Lcom/google/android/glass/eye/EyeGestureManager;->isSupported(Lcom/google/android/glass/eye/EyeGesture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Lcom/google/glass/tutorial/tutorials/WinkTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/WinkTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 182
    :cond_1
    new-instance v1, Lcom/google/glass/tutorial/tutorials/WifiTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/WifiTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 183
    new-instance v1, Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/tutorial/tutorials/GlasswareTutorial;-><init>(Landroid/content/Context;Lcom/google/glass/userevent/UserEventHelper;)V

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 184
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    return-object v1
.end method

.method private getRemainingTutorialsLogData()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .local v0, "remainingTutorials":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/tutorial/Tutorial;

    .line 209
    .local v1, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    invoke-virtual {v1}, Lcom/google/glass/tutorial/Tutorial;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/google/glass/tutorial/Tutorial;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    invoke-virtual {v1}, Lcom/google/glass/tutorial/Tutorial;->getEventActionValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 216
    .end local v1    # "tutorial":Lcom/google/glass/tutorial/Tutorial;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private logTimeout()V
    .locals 5

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_TIMEOUT:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "i"

    .line 222
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialManager;->getRemainingTutorialsLogData()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 221
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method private notifyObservers()V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 308
    return-void
.end method


# virtual methods
.method public allowDismiss()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/google/glass/tutorial/TutorialManager;->allowDismiss:Z

    return v0
.end method

.method public dismissTutorial()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 261
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 262
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->OOBE_CHECKLIST_DIMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "i"

    .line 263
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialManager;->getRemainingTutorialsLogData()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    .line 262
    invoke-static {v2, v3, v4}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->context:Landroid/content/Context;

    const-string v1, "tutorial.sharedPref"

    invoke-virtual {v0, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dismissed"

    .line 265
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 266
    iput-boolean v6, p0, Lcom/google/glass/tutorial/TutorialManager;->dismissed:Z

    .line 267
    invoke-direct {p0}, Lcom/google/glass/tutorial/TutorialManager;->notifyObservers()V

    .line 268
    return-void
.end method

.method public getFirstLoadTime()J
    .locals 2

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/google/glass/tutorial/TutorialManager;->firstLoadTime:J

    return-wide v0
.end method

.method public getTutorials()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/tutorial/Tutorial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    sget-object v1, Lcom/google/glass/tutorial/TutorialManager;->ONLY_VISIBLE_TUTORIALS:Lcom/google/common/base/Predicate;

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterables;->filter(Ljava/lang/Iterable;Lcom/google/common/base/Predicate;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method loadFirstLoadTime()J
    .locals 8
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 195
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 196
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager;->context:Landroid/content/Context;

    const-string v4, "tutorial.sharedPref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "firstLoad"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 199
    .local v0, "firstLoad":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/google/glass/tutorial/TutorialManager;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v3}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    .line 201
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "firstLoad"

    invoke-interface {v3, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    :cond_0
    return-wide v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    .line 189
    .local v0, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->unregisterForChangeNotifications()V

    goto :goto_0

    .line 191
    .end local v0    # "tutorial":Lcom/google/glass/tutorial/Tutorial;
    :cond_0
    return-void
.end method

.method public refreshCompletedState()V
    .locals 2

    .prologue
    .line 230
    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsTest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/glass/predicates/Assert;->getIsUiThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 232
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/tutorial/TutorialManager;->refreshCompletedStateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 236
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->refreshCompletedStateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public registerObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 293
    return-void
.end method

.method public setAllowDismiss(Z)V
    .locals 0
    .param p1, "allowDismiss"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 279
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertIsTest()V

    .line 280
    iput-boolean p1, p0, Lcom/google/glass/tutorial/TutorialManager;->allowDismiss:Z

    .line 281
    return-void
.end method

.method public tutorialsAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-boolean v2, p0, Lcom/google/glass/tutorial/TutorialManager;->dismissed:Z

    if-eqz v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 249
    :cond_1
    iget-boolean v2, p0, Lcom/google/glass/tutorial/TutorialManager;->timedOut:Z

    if-nez v2, :cond_0

    .line 252
    iget-object v2, p0, Lcom/google/glass/tutorial/TutorialManager;->tutorials:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/tutorial/Tutorial;

    .line 253
    .local v0, "tutorial":Lcom/google/glass/tutorial/Tutorial;
    invoke-virtual {v0}, Lcom/google/glass/tutorial/Tutorial;->isCompleted()Z

    move-result v3

    if-nez v3, :cond_2

    .line 254
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/google/glass/tutorial/TutorialManager;->dataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 300
    return-void
.end method
