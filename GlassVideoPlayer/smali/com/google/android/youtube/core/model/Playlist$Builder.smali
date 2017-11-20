.class public Lcom/google/android/youtube/core/model/Playlist$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private contentUri:Landroid/net/Uri;

.field private editUri:Landroid/net/Uri;

.field private hqThumbnailUri:Landroid/net/Uri;

.field private id:Ljava/lang/String;

.field private sdThumbnailUri:Landroid/net/Uri;

.field private size:I

.field private summary:Ljava/lang/String;

.field private thumbnailUri:Landroid/net/Uri;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 230
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 232
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 234
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 235
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 236
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 238
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 239
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 224
    iget v0, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 225
    return-void
.end method


# virtual methods
.method public author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 155
    return-object p0
.end method

.method public build()Lcom/google/android/youtube/core/model/Playlist;
    .locals 12

    .prologue
    .line 195
    new-instance v0, Lcom/google/android/youtube/core/model/Playlist;

    .line 196
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 198
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 199
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->author:Ljava/lang/String;

    .line 200
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 201
    iget-object v6, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 202
    iget-object v7, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 203
    iget-object v8, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 204
    iget-object v9, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 205
    iget-object v10, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 206
    iget v11, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 195
    invoke-direct/range {v0 .. v11}, Lcom/google/android/youtube/core/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;I)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Playlist$Builder;->build()Lcom/google/android/youtube/core/model/Playlist;

    move-result-object v0

    return-object v0
.end method

.method public contentUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->contentUri:Landroid/net/Uri;

    .line 165
    return-object p0
.end method

.method public editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->editUri:Landroid/net/Uri;

    .line 170
    return-object p0
.end method

.method public hqThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->hqThumbnailUri:Landroid/net/Uri;

    .line 180
    return-object p0
.end method

.method public id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->id:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public sdThumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->sdThumbnailUri:Landroid/net/Uri;

    .line 185
    return-object p0
.end method

.method public size(I)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 189
    iput p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->size:I

    .line 190
    return-object p0
.end method

.method public summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->summary:Ljava/lang/String;

    .line 150
    return-object p0
.end method

.method public thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->thumbnailUri:Landroid/net/Uri;

    .line 175
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->title:Ljava/lang/String;

    .line 145
    return-object p0
.end method

.method public updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Playlist$Builder;
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Playlist$Builder;->updated:Ljava/util/Date;

    .line 160
    return-object p0
.end method
