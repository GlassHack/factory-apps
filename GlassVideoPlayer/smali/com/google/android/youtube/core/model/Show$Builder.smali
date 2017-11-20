.class public final Lcom/google/android/youtube/core/model/Show$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private credits:Ljava/util/Map;

.field private description:Ljava/lang/String;

.field private hqPosterUri:Landroid/net/Uri;

.field private posterUri:Landroid/net/Uri;

.field private seasonsUri:Landroid/net/Uri;

.field private selfUri:Landroid/net/Uri;

.field private showGenres:Ljava/util/List;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    .line 108
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->title:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->description:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    .line 205
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->selfUri:Landroid/net/Uri;

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->seasonsUri:Landroid/net/Uri;

    .line 207
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    .line 208
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->posterUri:Landroid/net/Uri;

    .line 209
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 210
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Show$Builder;->build()Lcom/google/android/youtube/core/model/Show;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 192
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->selfUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->seasonsUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 196
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->posterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->hqPosterUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 198
    return-void
.end method


# virtual methods
.method public final addCredit(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 2

    .prologue
    .line 162
    const-string v0, "role may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v0, "name may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 165
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object p0
.end method

.method public final addShowGenre(Lcom/google/android/youtube/core/model/Video$Episode$EpisodeGenre;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 1

    .prologue
    .line 136
    const-string v0, "showGenre may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/f;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Show;
    .locals 9

    .prologue
    .line 185
    new-instance v0, Lcom/google/android/youtube/core/model/Show;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->title:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Show$Builder;->description:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/Show$Builder;->selfUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/youtube/core/model/Show$Builder;->seasonsUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    iget-object v7, p0, Lcom/google/android/youtube/core/model/Show$Builder;->posterUri:Landroid/net/Uri;

    .line 186
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Show$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 185
    invoke-direct/range {v0 .. v8}, Lcom/google/android/youtube/core/model/Show;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/Map;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Show$Builder;->build()Lcom/google/android/youtube/core/model/Show;

    move-result-object v0

    return-object v0
.end method

.method public final credits(Ljava/util/Map;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 5

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 153
    if-eqz p1, :cond_0

    .line 154
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    :cond_0
    return-object p0

    .line 154
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 155
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Show$Builder;->credits:Ljava/util/Map;

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

.method public final description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->description:Ljava/lang/String;

    .line 126
    return-object p0
.end method

.method public final hqPosterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->hqPosterUri:Landroid/net/Uri;

    .line 180
    return-object p0
.end method

.method public final posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->posterUri:Landroid/net/Uri;

    .line 175
    return-object p0
.end method

.method public final seasonsUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->seasonsUri:Landroid/net/Uri;

    .line 148
    return-object p0
.end method

.method public final selfUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->selfUri:Landroid/net/Uri;

    .line 143
    return-object p0
.end method

.method public final showGenres(Ljava/util/List;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 131
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Show$Builder;->showGenres:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 132
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Show$Builder;
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Show$Builder;->title:Ljava/lang/String;

    .line 121
    return-object p0
.end method
