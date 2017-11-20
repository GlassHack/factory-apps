.class public final Lcom/google/android/youtube/core/model/SubtitleWindow;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final id:I

.field final settingsTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;

.field final textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;


# direct methods
.method private constructor <init>(ILcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->id:I

    .line 21
    iput-object p2, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;

    .line 22
    iput-object p3, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->settingsTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;Lcom/google/android/youtube/core/model/SubtitleWindow;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/youtube/core/model/SubtitleWindow;-><init>(ILcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;)V

    return-void
.end method


# virtual methods
.method public final getId()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->id:I

    return v0
.end method

.method public final getSettingsAt(I)Lcom/google/android/youtube/core/model/SubtitleWindowSettings;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->settingsTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;->getSubtitleWindowSettingsAt(I)Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitleWindowSnapshotAt(I)Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;
    .locals 4

    .prologue
    .line 38
    new-instance v0, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    .line 39
    iget v1, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->id:I

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindow;->getTextAt(I)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindow;->getSettingsAt(I)Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    move-result-object v3

    .line 38
    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;-><init>(IILjava/lang/String;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;)V

    return-object v0
.end method

.method public final getTextAt(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;

    invoke-virtual {v0, p1}, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->getSubtitleWindowTextAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    const-string v0, "id: %d text: %s settings: %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 48
    iget v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 49
    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->textTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/SubtitleWindowTextTimeline;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 50
    iget-object v3, p0, Lcom/google/android/youtube/core/model/SubtitleWindow;->settingsTimeline:Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/SubtitleWindowSettingsTimeline;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
