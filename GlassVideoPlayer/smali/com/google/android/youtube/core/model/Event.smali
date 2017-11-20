.class public final Lcom/google/android/youtube/core/model/Event;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final action:Lcom/google/android/youtube/core/model/Event$Action;

.field public final displayUsername:Ljava/lang/String;

.field public final groupId:Ljava/lang/String;

.field public final subject:Ljava/lang/String;

.field public final subjectUri:Landroid/net/Uri;

.field public final target:Ljava/lang/String;

.field public targetVideo:Lcom/google/android/youtube/core/model/Video;

.field public final when:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Event;->subjectUri:Landroid/net/Uri;

    .line 107
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 108
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    .line 109
    iput-object p5, p0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 110
    iput-object p7, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    .line 111
    if-eqz p3, :cond_0

    iget-boolean v0, p3, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_0

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    .line 117
    :goto_0
    iput-object p8, p0, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    .line 118
    return-void

    .line 115
    :cond_0
    iput-object p6, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 141
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "builder required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event;->buildUpon()Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final buildUpon()Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Event$Builder;-><init>()V

    .line 146
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subjectUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->displayUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->when:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->groupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Event$Builder;->groupId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;

    move-result-object v0

    .line 145
    return-object v0
.end method

.method public final targetIsChannel()Z
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final targetIsVideo()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    iget-boolean v0, v0, Lcom/google/android/youtube/core/model/Event$Action;->targetsVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->subject:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Event$Action;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
