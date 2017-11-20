.class public final Lcom/google/android/youtube/core/model/Event$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private action:Lcom/google/android/youtube/core/model/Event$Action;

.field private displayUsername:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private subjectUri:Landroid/net/Uri;

.field private target:Ljava/lang/String;

.field private targetVideo:Lcom/google/android/youtube/core/model/Video;

.field private when:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Event$Action;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 239
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 241
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 243
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    .line 244
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event$Builder;->build()Lcom/google/android/youtube/core/model/Event;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 233
    return-void
.end method


# virtual methods
.method public final action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 179
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Event;
    .locals 9

    .prologue
    .line 209
    new-instance v0, Lcom/google/android/youtube/core/model/Event;

    .line 210
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 211
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    .line 212
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Event$Builder;->action:Lcom/google/android/youtube/core/model/Event$Action;

    .line 213
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 214
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 215
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    .line 216
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 217
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    .line 209
    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Event;-><init>(Ljava/lang/String;Landroid/net/Uri;Lcom/google/android/youtube/core/model/Event$Action;Ljava/lang/String;Lcom/google/android/youtube/core/model/Video;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event$Builder;->build()Lcom/google/android/youtube/core/model/Event;

    move-result-object v0

    return-object v0
.end method

.method public final displayUsername(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->displayUsername:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public final groupId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->groupId:Ljava/lang/String;

    .line 204
    return-object p0
.end method

.method public final subject(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subject:Ljava/lang/String;

    .line 169
    return-object p0
.end method

.method public final subjectUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->subjectUri:Landroid/net/Uri;

    .line 174
    return-object p0
.end method

.method public final target(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->target:Ljava/lang/String;

    .line 184
    return-object p0
.end method

.method public final targetVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->targetVideo:Lcom/google/android/youtube/core/model/Video;

    .line 189
    return-object p0
.end method

.method public final when(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Event$Builder;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Event$Builder;->when:Ljava/util/Date;

    .line 199
    return-object p0
.end method
