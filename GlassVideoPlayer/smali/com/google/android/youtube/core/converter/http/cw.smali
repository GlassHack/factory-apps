.class final Lcom/google/android/youtube/core/converter/http/cw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/model/g;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/cv;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/cv;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/cw;->a:Lcom/google/android/youtube/core/converter/http/cv;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Lcom/google/android/youtube/core/async/Optional;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/google/android/youtube/core/async/Optional$Null;->instance()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/cw;->a()Lcom/google/android/youtube/core/async/Optional;

    move-result-object v0

    return-object v0
.end method
