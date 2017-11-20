.class public final Lcom/google/android/youtube/core/model/Subtitles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID_EVENT_TIME:I = -0x1


# instance fields
.field private transient eventTimes:Ljava/util/List;

.field private final windows:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Subtitles;->initEventTimes()V

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/youtube/core/model/Subtitles;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/model/Subtitles;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private initEventTimes()V
    .locals 4

    .prologue
    .line 35
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 36
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->eventTimes:Ljava/util/List;

    .line 43
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleWindow;

    .line 38
    iget-object v3, v0, Lcom/google/android/youtube/core/model/SubtitleWindow;->textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 39
    iget-object v3, v0, Lcom/google/android/youtube/core/model/SubtitleWindow;->textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;

    iget-object v3, v3, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object v0, v0, Lcom/google/android/youtube/core/model/SubtitleWindow;->settingsTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;

    iget-object v0, v0, Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;->startTimes:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 36
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 71
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/Subtitles;->initEventTimes()V

    .line 72
    return-void
.end method


# virtual methods
.method public final getEventTimes()Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->eventTimes:Ljava/util/List;

    return-object v0
.end method

.method public final getSubtitleWindowSnapshotsAt(I)Ljava/util/List;
    .locals 3

    .prologue
    .line 46
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 47
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 50
    return-object v2

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleWindow;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindow;->getSubtitleWindowSnapshotAt(I)Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Subtitles;->windows:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/SubtitleWindow;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/SubtitleWindow;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 64
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
