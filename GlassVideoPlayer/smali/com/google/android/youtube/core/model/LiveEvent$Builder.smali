.class public final Lcom/google/android/youtube/core/model/LiveEvent$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private end:Ljava/util/Date;

.field private selfUri:Landroid/net/Uri;

.field private start:Ljava/util/Date;

.field private status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

.field private video:Lcom/google/android/youtube/core/model/Video;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 162
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start:Ljava/util/Date;

    .line 163
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end:Ljava/util/Date;

    .line 164
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/LiveEvent$Status;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri:Landroid/net/Uri;

    .line 166
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video:Lcom/google/android/youtube/core/model/Video;

    .line 167
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->build()Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 159
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/youtube/core/model/LiveEvent;
    .locals 6

    .prologue
    .line 140
    new-instance v0, Lcom/google/android/youtube/core/model/LiveEvent;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start:Ljava/util/Date;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end:Ljava/util/Date;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/youtube/core/model/LiveEvent;-><init>(Ljava/util/Date;Ljava/util/Date;Lcom/google/android/youtube/core/model/LiveEvent$Status;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Video;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->build()Lcom/google/android/youtube/core/model/LiveEvent;

    move-result-object v0

    return-object v0
.end method

.method public final end(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end:Ljava/util/Date;

    .line 120
    return-object p0
.end method

.method public final selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->selfUri:Landroid/net/Uri;

    .line 130
    return-object p0
.end method

.method public final start(Ljava/util/Date;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start:Ljava/util/Date;

    .line 115
    return-object p0
.end method

.method public final status(Lcom/google/android/youtube/core/model/LiveEvent$Status;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    .line 125
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Live Event [start = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->start:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->end:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 146
    const-string v1, "\', status: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->status:Lcom/google/android/youtube/core/model/LiveEvent$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', video: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final video(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/LiveEvent$Builder;
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/youtube/core/model/LiveEvent$Builder;->video:Lcom/google/android/youtube/core/model/Video;

    .line 135
    return-object p0
.end method
