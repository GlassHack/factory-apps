.class public final Lcom/google/android/youtube/core/model/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/model/f;->a:Ljava/util/List;

    .line 21
    return-void
.end method

.method private a()Ljava/util/List;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/youtube/core/model/f;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/f;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/core/model/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    return-object p0
.end method

.method public final synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/youtube/core/model/f;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
