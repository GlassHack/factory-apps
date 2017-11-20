.class public final Lcom/google/android/youtube/core/model/Season$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private clipsUri:Landroid/net/Uri;

.field private credits:Ljava/util/Map;

.field private description:Ljava/lang/String;

.field private episodesUri:Landroid/net/Uri;

.field private finalEpisodeCount:Ljava/lang/Integer;

.field private firstReleased:Ljava/util/Date;

.field private hqPosterUri:Landroid/net/Uri;

.field private posterUri:Landroid/net/Uri;

.field private selfUri:Landroid/net/Uri;

.field private showUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    .line 117
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->title:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->description:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->showUri:Landroid/net/Uri;

    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->selfUri:Landroid/net/Uri;

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->clipsUri:Landroid/net/Uri;

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->episodesUri:Landroid/net/Uri;

    .line 231
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->finalEpisodeCount:Ljava/lang/Integer;

    .line 232
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->firstReleased:Ljava/util/Date;

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->posterUri:Landroid/net/Uri;

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 236
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Season$Builder;->build()Lcom/google/android/youtube/core/model/Season;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->showUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 213
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->selfUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->clipsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->episodesUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->finalEpisodeCount:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->firstReleased:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->hqPosterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 221
    return-void
.end method


# virtual methods
.method public final addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 2

    .prologue
    .line 182
    const-string v0, "role may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v0, "name may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 185
    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Season;
    .locals 12

    .prologue
    .line 205
    new-instance v0, Lcom/google/android/youtube/core/model/Season;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Season$Builder;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Season$Builder;->showUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Season$Builder;->selfUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Season$Builder;->clipsUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Season$Builder;->episodesUri:Landroid/net/Uri;

    .line 206
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Season$Builder;->finalEpisodeCount:Ljava/lang/Integer;

    iget-object v8, p0, Lcom/google/android/youtube/core/model/Season$Builder;->firstReleased:Ljava/util/Date;

    iget-object v9, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/youtube/core/model/Season$Builder;->posterUri:Landroid/net/Uri;

    iget-object v11, p0, Lcom/google/android/youtube/core/model/Season$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 205
    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/core/model/Season;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Integer;Ljava/util/Date;Ljava/util/Map;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Season$Builder;->build()Lcom/google/android/youtube/core/model/Season;

    move-result-object v0

    return-object v0
.end method

.method public final clipsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->clipsUri:Landroid/net/Uri;

    .line 153
    return-object p0
.end method

.method public final credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 5

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 178
    :cond_0
    return-object p0

    .line 174
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 175
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Season$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->description:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public final episodesUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->episodesUri:Landroid/net/Uri;

    .line 158
    return-object p0
.end method

.method public final finalEpisodeCount(Ljava/lang/Integer;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->finalEpisodeCount:Ljava/lang/Integer;

    .line 163
    return-object p0
.end method

.method public final firstReleased(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->firstReleased:Ljava/util/Date;

    .line 168
    return-object p0
.end method

.method public final hqPosterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 200
    return-object p0
.end method

.method public final posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->posterUri:Landroid/net/Uri;

    .line 195
    return-object p0
.end method

.method public final selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->selfUri:Landroid/net/Uri;

    .line 148
    return-object p0
.end method

.method public final showUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->showUri:Landroid/net/Uri;

    .line 143
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Season$Builder;
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Season$Builder;->title:Ljava/lang/String;

    .line 133
    return-object p0
.end method
