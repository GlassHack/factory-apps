.class public final Lcom/google/android/youtube/core/model/Comment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final author:Ljava/lang/String;

.field public final content:Ljava/lang/String;

.field public final publishedDate:Ljava/util/Date;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/android/youtube/core/model/Comment;->title:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/google/android/youtube/core/model/Comment;->content:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/google/android/youtube/core/model/Comment;->author:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/google/android/youtube/core/model/Comment;->publishedDate:Ljava/util/Date;

    .line 39
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Comment;->content:Ljava/lang/String;

    return-object v0
.end method
