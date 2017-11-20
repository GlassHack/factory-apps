.class public final Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final endTimes:Ljava/util/List;

.field private final lines:Ljava/util/List;

.field final startTimes:Ljava/util/List;


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "startTimes cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v0, "endTimes cannot be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v0, "lines cannot be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 28
    :goto_0
    const-string v3, "startTimes and endTimes differ in size"

    .line 27
    invoke-static {v0, v3}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 30
    :goto_1
    const-string v0, "startTimes and lines differ in size"

    .line 29
    invoke-static {v1, v0}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 31
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    .line 32
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    .line 33
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->lines:Ljava/util/List;

    .line 34
    return-void

    :cond_0
    move v0, v2

    .line 27
    goto :goto_0

    :cond_1
    move v1, v2

    .line 29
    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getSubtitleWindowTextAt(I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    .line 44
    if-gez v1, :cond_0

    .line 48
    neg-int v0, v1

    add-int/lit8 v1, v0, -0x2

    .line 49
    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 56
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, p1, :cond_5

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->lines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    :goto_1
    add-int/lit8 v3, v1, 0x1

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_2

    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v1, p1, :cond_6

    .line 71
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v2, v0

    :cond_4
    return-object v2

    .line 57
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 65
    :cond_6
    if-nez v2, :cond_7

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    .line 68
    :cond_7
    const-string v1, "<br/>"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v1, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->lines:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 79
    :cond_0
    const-string v0, "["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->startTimes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->endTimes:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 81
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->lines:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 82
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
