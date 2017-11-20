.class public Lcom/google/glass/note/RotatingTextNote;
.super Ljava/lang/Object;
.source "RotatingTextNote.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/note/RotatingTextNote$Provider;
    }
.end annotation


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private handler:Landroid/os/Handler;

.field private nextRunnable:Ljava/lang/Runnable;

.field private final textNote:Lcom/google/android/glass/widget/Note$TextNote;

.field private final textsAndDurations:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private textsAndDurationsIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/note/RotatingTextNote;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;ZLcom/google/common/collect/ImmutableList;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hideBackground"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Z",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p3, "textsAndDurations":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/google/glass/async/HandlerProvider;->getInstance()Lcom/google/glass/async/HandlerProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/async/HandlerProvider;->get()Landroid/os/Handler;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/note/RotatingTextNote;->handler:Landroid/os/Handler;

    .line 28
    new-instance v3, Lcom/google/glass/note/RotatingTextNote$1;

    invoke-direct {v3, p0}, Lcom/google/glass/note/RotatingTextNote$1;-><init>(Lcom/google/glass/note/RotatingTextNote;)V

    iput-object v3, p0, Lcom/google/glass/note/RotatingTextNote;->nextRunnable:Ljava/lang/Runnable;

    .line 70
    const-string v3, "view can not be null"

    invoke-static {p1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v3, "textsAndDurations can not be null"

    invoke-static {p3, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    const-string v6, "textsAndDurations can not be empty."

    .line 72
    invoke-static {v3, v6}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 74
    invoke-virtual {p3}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 75
    .local v2, "textAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, "text":Ljava/lang/String;
    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 77
    .local v0, "duration":Ljava/lang/Long;
    const-string v3, "found a null string for a note"

    invoke-static {v1, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v3, "found a null duration for a note"

    invoke-static {v0, v3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_1

    move v3, v4

    :goto_2
    const-string v7, "note duration must be >= 0"

    invoke-static {v3, v7}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_1

    .end local v0    # "duration":Ljava/lang/Long;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    move v3, v5

    .line 73
    goto :goto_0

    .restart local v0    # "duration":Ljava/lang/Long;
    .restart local v1    # "text":Ljava/lang/String;
    .restart local v2    # "textAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    move v3, v5

    .line 79
    goto :goto_2

    .line 81
    .end local v0    # "duration":Ljava/lang/Long;
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "textAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    invoke-static {}, Lcom/google/glass/note/NoteProvider;->getInstance()Lcom/google/glass/note/NoteProvider;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/note/NoteProvider;->get(Landroid/view/View;)Lcom/google/android/glass/widget/Note;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    invoke-virtual {v3, v4, v6, v7, p2}, Lcom/google/android/glass/widget/Note;->startNote(Ljava/lang/CharSequence;JZ)Lcom/google/android/glass/widget/Note$TextNote;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    .line 83
    iget-object v3, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-interface {v3}, Lcom/google/android/glass/widget/Note$TextNote;->hide()V

    .line 84
    iput-object p3, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurations:Lcom/google/common/collect/ImmutableList;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/note/RotatingTextNote;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/note/RotatingTextNote;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/glass/note/RotatingTextNote;->rotate()V

    return-void
.end method

.method private getNextTextAndDuration()Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurationsIterator:Ljava/util/Iterator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurationsIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurationsIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 135
    .local v0, "nextTextAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    return-object v0

    .line 132
    .end local v0    # "nextTextAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_0
    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurations:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurationsIterator:Ljava/util/Iterator;

    .line 133
    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->textsAndDurationsIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .restart local v0    # "nextTextAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0
.end method

.method private hideCurrentNote()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Note$TextNote;->hide()V

    .line 120
    :cond_0
    return-void
.end method

.method private rotate()V
    .locals 4

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/glass/note/RotatingTextNote;->getNextTextAndDuration()Landroid/util/Pair;

    move-result-object v0

    .line 105
    .local v0, "nextTextAndDuration":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/google/glass/note/RotatingTextNote;->rotateTextNote(Ljava/lang/String;)V

    .line 106
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/glass/note/RotatingTextNote;->scheduleNextRotation(J)V

    .line 107
    return-void
.end method

.method private rotateTextNote(Ljava/lang/String;)V
    .locals 4
    .param p1, "nextText"    # Ljava/lang/String;

    .prologue
    .line 110
    sget-object v0, Lcom/google/glass/note/RotatingTextNote;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Rotating to next text: \"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-direct {p0}, Lcom/google/glass/note/RotatingTextNote;->hideCurrentNote()V

    .line 112
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-interface {v0, p1}, Lcom/google/android/glass/widget/Note$TextNote;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->textNote:Lcom/google/android/glass/widget/Note$TextNote;

    invoke-interface {v0}, Lcom/google/android/glass/widget/Note$TextNote;->show()V

    .line 114
    return-void
.end method

.method private scheduleNextRotation(J)V
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 123
    sget-object v0, Lcom/google/glass/note/RotatingTextNote;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Scheduling next rotation in %s ms."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 125
    return-void
.end method


# virtual methods
.method public startRotation()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/glass/note/RotatingTextNote;->rotate()V

    .line 93
    return-void
.end method

.method public stopRotation()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/glass/note/RotatingTextNote;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/note/RotatingTextNote;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 100
    invoke-direct {p0}, Lcom/google/glass/note/RotatingTextNote;->hideCurrentNote()V

    .line 101
    return-void
.end method
