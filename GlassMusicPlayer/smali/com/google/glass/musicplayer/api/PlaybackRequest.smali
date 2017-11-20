.class public Lcom/google/glass/musicplayer/api/PlaybackRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private id:Ljava/lang/String;

.field private meta1:I

.field private meta2:[B

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I[B)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->type:I

    .line 35
    iput-object p2, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->id:Ljava/lang/String;

    .line 36
    iput p3, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta1:I

    .line 37
    iput-object p4, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    .line 38
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->type:I

    .line 70
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->id:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta1:I

    .line 72
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 73
    if-lez v0, :cond_0

    .line 74
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    .line 75
    iget-object v1, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/ObjectInputStream;->read([BII)I

    .line 77
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    iget v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->type:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    iget v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta1:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    iget-object v1, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ObjectOutputStream;->write([BII)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta1()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta1:I

    return v0
.end method

.method public getMeta2()[B
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->meta2:[B

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/glass/musicplayer/api/PlaybackRequest;->type:I

    return v0
.end method
