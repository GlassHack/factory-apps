.class public final Lcom/google/android/youtube/core/model/Channel$Builder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;
.implements Ljava/io/Serializable;


# instance fields
.field private author:Ljava/lang/String;

.field private paidContent:Z

.field private summary:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private updated:Ljava/util/Date;

.field private userProfileUri:Landroid/net/Uri;

.field private videoCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    .line 147
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    .line 148
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    .line 149
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Channel$Builder;->build()Lcom/google/android/youtube/core/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Util;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 138
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 139
    iget v0, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 140
    return-void
.end method


# virtual methods
.method public final author(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    .line 94
    return-object p0
.end method

.method public final build()Lcom/google/android/youtube/core/model/Channel;
    .locals 8

    .prologue
    .line 119
    new-instance v0, Lcom/google/android/youtube/core/model/Channel;

    .line 120
    iget-object v1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    .line 122
    iget-object v3, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->author:Ljava/lang/String;

    .line 123
    iget-object v4, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    .line 124
    iget-object v5, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    .line 125
    iget v6, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    .line 126
    iget-boolean v7, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->paidContent:Z

    .line 119
    invoke-direct/range {v0 .. v7}, Lcom/google/android/youtube/core/model/Channel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Date;IZ)V

    return-object v0
.end method

.method public final bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Channel$Builder;->build()Lcom/google/android/youtube/core/model/Channel;

    move-result-object v0

    return-object v0
.end method

.method public final paidContent(Z)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->paidContent:Z

    .line 114
    return-object p0
.end method

.method public final summary(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->summary:Ljava/lang/String;

    .line 89
    return-object p0
.end method

.method public final title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->title:Ljava/lang/String;

    .line 84
    return-object p0
.end method

.method public final updated(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->updated:Ljava/util/Date;

    .line 99
    return-object p0
.end method

.method public final userProfileUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->userProfileUri:Landroid/net/Uri;

    .line 104
    return-object p0
.end method

.method public final videoCount(I)Lcom/google/android/youtube/core/model/Channel$Builder;
    .locals 0

    .prologue
    .line 108
    iput p1, p0, Lcom/google/android/youtube/core/model/Channel$Builder;->videoCount:I

    .line 109
    return-object p0
.end method
