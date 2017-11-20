.class public Lcom/google/glass/note/NoteManager;
.super Ljava/lang/Object;
.source "NoteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/note/NoteManager$Provider;,
        Lcom/google/glass/note/NoteManager$Request;,
        Lcom/google/glass/note/NoteManager$Type;
    }
.end annotation


# static fields
.field static final MAX_TIMES_HINT_VIEWED:I = 0x3
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final NOTE_SHARED_PREFERENCES:Ljava/lang/String; = "notemanager:%s"

.field static final NO_DELAY_TO_POST:I
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private final context:Landroid/content/Context;

.field private currentRequest:Lcom/google/glass/note/NoteManager$Request;

.field final hideCurrentNoteRunnable:Ljava/lang/Runnable;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final prefs:Landroid/content/SharedPreferences;

.field final requests:Ljava/util/List;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/note/NoteManager$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final showCurrentNoteRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 154
    new-instance v1, Lcom/google/glass/note/NoteManager$1;

    invoke-direct {v1, p0}, Lcom/google/glass/note/NoteManager$1;-><init>(Lcom/google/glass/note/NoteManager;)V

    iput-object v1, p0, Lcom/google/glass/note/NoteManager;->hideCurrentNoteRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v1, Lcom/google/glass/note/NoteManager$2;

    invoke-direct {v1, p0}, Lcom/google/glass/note/NoteManager$2;-><init>(Lcom/google/glass/note/NoteManager;)V

    iput-object v1, p0, Lcom/google/glass/note/NoteManager;->showCurrentNoteRunnable:Ljava/lang/Runnable;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    .line 195
    iput-object p1, p0, Lcom/google/glass/note/NoteManager;->context:Landroid/content/Context;

    .line 196
    const-string v1, "notemanager:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/note/NoteManager;->prefs:Landroid/content/SharedPreferences;

    .line 198
    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/note/NoteManager$Request;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/note/NoteManager;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/google/glass/note/NoteManager;->hideCurrentNote(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/note/NoteManager;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/note/NoteManager;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/note/NoteManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private hideCurrentNote(Z)V
    .locals 7
    .param p1, "cancelled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 295
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "hideCurrentNote. [cancelled=%s],[currentRequest=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    aput-object v3, v2, v6

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    sget-object v0, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    if-eqz v0, :cond_0

    .line 300
    sget-object v0, Lcom/google/glass/note/NoteManager$Type;->SYSTEM:Lcom/google/glass/note/NoteManager$Type;

    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    iget-object v1, v1, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v0, v1}, Lcom/google/glass/note/NoteManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "System note was not explicitly cancelled."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Continue showing System note."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    sget-object v0, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->hideCurrentNoteRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    iget-object v2, v2, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v2}, Lcom/google/glass/note/NoteManager$Type;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 323
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Requests are empty, not queueing a follow up."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 329
    :goto_1
    return-void

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Schedule System Note to return later."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    invoke-static {v0}, Lcom/google/glass/note/NoteManager$Request;->access$700(Lcom/google/glass/note/NoteManager$Request;)V

    .line 313
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iput-object v5, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    goto :goto_0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Hiding Note."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    invoke-static {v0}, Lcom/google/glass/note/NoteManager$Request;->access$700(Lcom/google/glass/note/NoteManager$Request;)V

    .line 319
    iput-object v5, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    goto :goto_0

    .line 328
    :cond_3
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/note/NoteManager$Request;

    invoke-virtual {p0, v0, v6}, Lcom/google/glass/note/NoteManager;->showRequestOrAddToQ(Lcom/google/glass/note/NoteManager$Request;Z)V

    goto :goto_1
.end method


# virtual methods
.method public varargs cancelNote([Lcom/google/glass/note/NoteManager$Request;)V
    .locals 6
    .param p1, "requestsToCancel"    # [Lcom/google/glass/note/NoteManager$Request;

    .prologue
    .line 270
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "shouldHideCurrentNote":Z
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    .line 274
    .local v1, "request":Lcom/google/glass/note/NoteManager$Request;
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    invoke-virtual {v1, v5}, Lcom/google/glass/note/NoteManager$Request;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 275
    const/4 v2, 0x1

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 273
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    .end local v1    # "request":Lcom/google/glass/note/NoteManager$Request;
    :cond_1
    if-eqz v2, :cond_2

    .line 284
    const/4 v0, 0x1

    .line 285
    .local v0, "cancelled":Z
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/google/glass/note/NoteManager;->hideCurrentNote(Z)V

    .line 287
    .end local v0    # "cancelled":Z
    :cond_2
    return-void
.end method

.method getNumberOfTimesViewed(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)I
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "request"    # Lcom/google/glass/note/NoteManager$Request;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 365
    invoke-static {p2}, Lcom/google/glass/note/NoteManager$Request;->access$800(Lcom/google/glass/note/NoteManager$Request;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method incrementView(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "request"    # Lcom/google/glass/note/NoteManager$Request;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/note/NoteManager;->getNumberOfTimesViewed(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)I

    move-result v0

    .line 343
    .local v0, "views":I
    add-int/lit8 v0, v0, 0x1

    .line 344
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {p2}, Lcom/google/glass/note/NoteManager$Request;->access$800(Lcom/google/glass/note/NoteManager$Request;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 345
    return-void
.end method

.method shouldShowNow()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method shouldViewAgain(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)Z
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "request"    # Lcom/google/glass/note/NoteManager$Request;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 353
    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->HINT:Lcom/google/glass/note/NoteManager$Type;

    iget-object v2, p2, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v1, v2}, Lcom/google/glass/note/NoteManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/google/glass/note/NoteManager$Type;->HINT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    iget-object v2, p2, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v1, v2}, Lcom/google/glass/note/NoteManager$Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/glass/note/NoteManager;->getNumberOfTimesViewed(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 357
    :cond_1
    :goto_0
    return v0

    .line 354
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showEvent(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/glass/note/NoteManager$Request;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "delayed"    # Z

    .prologue
    .line 229
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 231
    if-eqz p5, :cond_0

    sget-object v2, Lcom/google/glass/note/NoteManager$Type;->EVENT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    .line 232
    .local v2, "type":Lcom/google/glass/note/NoteManager$Type;
    :goto_0
    new-instance v0, Lcom/google/glass/note/NoteManager$Request;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/note/NoteManager$Request;-><init>(Landroid/view/View;Lcom/google/glass/note/NoteManager$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .local v0, "request":Lcom/google/glass/note/NoteManager$Request;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/note/NoteManager;->showRequestOrAddToQ(Lcom/google/glass/note/NoteManager$Request;Z)V

    .line 234
    return-object v0

    .line 231
    .end local v0    # "request":Lcom/google/glass/note/NoteManager$Request;
    .end local v2    # "type":Lcom/google/glass/note/NoteManager$Type;
    :cond_0
    sget-object v2, Lcom/google/glass/note/NoteManager$Type;->EVENT:Lcom/google/glass/note/NoteManager$Type;

    goto :goto_0
.end method

.method public showHint(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/glass/note/NoteManager$Request;
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "delayed"    # Z

    .prologue
    const/4 v6, 0x0

    .line 250
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 252
    if-eqz p5, :cond_0

    sget-object v2, Lcom/google/glass/note/NoteManager$Type;->HINT_DELAYED:Lcom/google/glass/note/NoteManager$Type;

    .line 253
    .local v2, "type":Lcom/google/glass/note/NoteManager$Type;
    :goto_0
    new-instance v0, Lcom/google/glass/note/NoteManager$Request;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/note/NoteManager$Request;-><init>(Landroid/view/View;Lcom/google/glass/note/NoteManager$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .local v0, "request":Lcom/google/glass/note/NoteManager$Request;
    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/note/NoteManager;->shouldViewAgain(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    invoke-virtual {p0, v0, v6}, Lcom/google/glass/note/NoteManager;->showRequestOrAddToQ(Lcom/google/glass/note/NoteManager$Request;Z)V

    .line 260
    .end local v0    # "request":Lcom/google/glass/note/NoteManager$Request;
    :goto_1
    return-object v0

    .line 252
    .end local v2    # "type":Lcom/google/glass/note/NoteManager$Type;
    :cond_0
    sget-object v2, Lcom/google/glass/note/NoteManager$Type;->HINT:Lcom/google/glass/note/NoteManager$Type;

    goto :goto_0

    .line 259
    .restart local v0    # "request":Lcom/google/glass/note/NoteManager$Request;
    .restart local v2    # "type":Lcom/google/glass/note/NoteManager$Type;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Not scheduling request. [Request=%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-interface {v1, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    const/4 v0, 0x0

    goto :goto_1
.end method

.method showRequestOrAddToQ(Lcom/google/glass/note/NoteManager$Request;Z)V
    .locals 11
    .param p1, "request"    # Lcom/google/glass/note/NoteManager$Request;
    .param p2, "isConsecutive"    # Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 377
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "showRequestOrAddToQ. [request=%s],[isConsecutive=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-interface {v3, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 378
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v3, p1}, Lcom/google/glass/note/NoteManager;->shouldViewAgain(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 379
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Reached max number of views for this request."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/note/NoteManager;->shouldShowNow()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 385
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 387
    iput-object p1, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    .line 388
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->currentRequest:Lcom/google/glass/note/NoteManager$Request;

    invoke-virtual {v3}, Lcom/google/glass/note/NoteManager$Request;->isShowing()Z

    move-result v3

    invoke-static {v3}, Lcom/google/glass/predicates/Assert;->assertFalse(Z)V

    .line 389
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->prefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, v3, p1}, Lcom/google/glass/note/NoteManager;->getNumberOfTimesViewed(Landroid/content/SharedPreferences;Lcom/google/glass/note/NoteManager$Request;)I

    move-result v2

    .line 390
    .local v2, "timesViewed":I
    if-eqz p2, :cond_2

    move-wide v0, v4

    .line 391
    .local v0, "delay":J
    :goto_1
    cmp-long v3, v0, v4

    if-nez v3, :cond_3

    .line 392
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Requst will be shown immediately."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    sget-object v3, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/glass/note/NoteManager;->showCurrentNoteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 390
    .end local v0    # "delay":J
    :cond_2
    iget-object v3, p1, Lcom/google/glass/note/NoteManager$Request;->type:Lcom/google/glass/note/NoteManager$Type;

    invoke-virtual {v3, v2}, Lcom/google/glass/note/NoteManager$Type;->getDelayToPost(I)J

    move-result-wide v0

    goto :goto_1

    .line 395
    .restart local v0    # "delay":J
    :cond_3
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Requst has been scheduled. [delay=%d]"

    new-array v5, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    sget-object v3, Lcom/google/glass/note/NoteManager;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/google/glass/note/NoteManager;->showCurrentNoteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 401
    .end local v0    # "delay":J
    .end local v2    # "timesViewed":I
    :cond_4
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 407
    iget-object v3, p0, Lcom/google/glass/note/NoteManager;->requests:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public showSystem(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Lcom/google/glass/note/NoteManager$Request;
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 212
    new-instance v0, Lcom/google/glass/note/NoteManager$Request;

    sget-object v2, Lcom/google/glass/note/NoteManager$Type;->SYSTEM:Lcom/google/glass/note/NoteManager$Type;

    iget-object v1, p0, Lcom/google/glass/note/NoteManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/note/NoteManager$Request;-><init>(Landroid/view/View;Lcom/google/glass/note/NoteManager$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .local v0, "request":Lcom/google/glass/note/NoteManager$Request;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/note/NoteManager;->showRequestOrAddToQ(Lcom/google/glass/note/NoteManager$Request;Z)V

    .line 214
    return-object v0
.end method
