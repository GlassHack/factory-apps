.class public final Lcom/google/android/youtube/core/model/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/youtube/core/model/Category;
    .locals 5

    .prologue
    .line 100
    new-instance v0, Lcom/google/android/youtube/core/model/Category;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/youtube/core/model/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/youtube/core/model/a;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/google/android/youtube/core/model/a;->d:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/core/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/youtube/core/model/a;->a:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public final a(Z)Lcom/google/android/youtube/core/model/a;
    .locals 0

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/google/android/youtube/core/model/a;->d:Z

    .line 96
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/google/android/youtube/core/model/a;->b:Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/youtube/core/model/a;
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/google/android/youtube/core/model/a;->c:Ljava/lang/String;

    .line 91
    return-object p0
.end method
