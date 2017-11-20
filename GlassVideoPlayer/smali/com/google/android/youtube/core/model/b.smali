.class public final Lcom/google/android/youtube/core/model/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/Comment;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcom/google/android/youtube/core/model/Comment;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/b;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/b;->d:Ljava/util/Date;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Comment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/model/b;->a:Ljava/lang/String;

    .line 55
    return-object p0
.end method

.method public final a(Ljava/util/Date;)Lcom/google/android/youtube/core/model/b;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/youtube/core/model/b;->d:Ljava/util/Date;

    .line 70
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/google/android/youtube/core/model/b;->b:Ljava/lang/String;

    .line 60
    return-object p0
.end method

.method public final synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/b;->a()Lcom/google/android/youtube/core/model/Comment;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/b;
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/android/youtube/core/model/b;->c:Ljava/lang/String;

    .line 65
    return-object p0
.end method
