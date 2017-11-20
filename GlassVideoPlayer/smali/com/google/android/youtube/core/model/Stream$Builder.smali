.class public final Lcom/google/android/youtube/core/model/Stream$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private gdataFormat:I

.field private mimeType:Ljava/lang/String;

.field private quality:Lcom/google/android/youtube/core/model/Stream$Quality;

.field private sizeInBytes:J

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    .prologue
    .line 317
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    .line 318
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Stream$Quality;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 319
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    .line 321
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    .line 322
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Stream$Builder;->build()Lcom/google/android/youtube/core/model/Stream;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 311
    iget v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 312
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 313
    return-void
.end method


# virtual methods
.method public final build()Lcom/google/android/youtube/core/model/Stream;
    .locals 7

    .prologue
    .line 296
    iget-wide v0, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 297
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    iget-wide v5, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    invoke-direct/range {v0 .. v6}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;IJ)V

    .line 299
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/youtube/core/model/Stream;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Stream;-><init>(Landroid/net/Uri;Lcom/google/android/youtube/core/model/Stream$Quality;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final gdataFormat(I)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0

    .prologue
    .line 291
    iput p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->gdataFormat:I

    .line 292
    return-object p0
.end method

.method public final mimeType(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->mimeType:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public final quality(Lcom/google/android/youtube/core/model/Stream$Quality;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->quality:Lcom/google/android/youtube/core/model/Stream$Quality;

    .line 277
    return-object p0
.end method

.method public final sizeInBytes(J)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0

    .prologue
    .line 281
    iput-wide p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->sizeInBytes:J

    .line 282
    return-object p0
.end method

.method public final uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Stream$Builder;
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Stream$Builder;->uri:Landroid/net/Uri;

    .line 272
    return-object p0
.end method
