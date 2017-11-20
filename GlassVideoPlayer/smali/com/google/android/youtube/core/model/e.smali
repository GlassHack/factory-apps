.class public final Lcom/google/android/youtube/core/model/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/d;
    .locals 5

    .prologue
    .line 111
    new-instance v0, Lcom/google/android/youtube/core/model/d;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->a:Ljava/lang/String;

    .line 92
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->b:Ljava/lang/String;

    .line 97
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->c:Ljava/lang/String;

    .line 102
    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lcom/google/android/youtube/core/model/e;
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lcom/google/android/youtube/core/model/e;->d:Ljava/lang/String;

    .line 107
    return-object p0
.end method
