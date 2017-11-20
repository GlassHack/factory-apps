.class public final Lcom/google/android/youtube/core/async/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/async/ae;


# instance fields
.field private final a:Lcom/google/android/youtube/core/async/ae;

.field private final b:Lcom/google/android/youtube/core/async/a;

.field private final c:Lcom/google/android/youtube/core/async/g;


# direct methods
.method private constructor <init>(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/g;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/google/android/youtube/core/async/e;->a:Lcom/google/android/youtube/core/async/ae;

    .line 63
    iput-object p2, p0, Lcom/google/android/youtube/core/async/e;->b:Lcom/google/android/youtube/core/async/a;

    .line 64
    iput-object p3, p0, Lcom/google/android/youtube/core/async/e;->c:Lcom/google/android/youtube/core/async/g;

    .line 65
    return-void
.end method

.method public static a(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/g;)Lcom/google/android/youtube/core/async/e;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/google/android/youtube/core/async/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/youtube/core/async/e;-><init>(Lcom/google/android/youtube/core/async/ae;Lcom/google/android/youtube/core/async/a;Lcom/google/android/youtube/core/async/g;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/g;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/youtube/core/async/e;->c:Lcom/google/android/youtube/core/async/g;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/a;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/youtube/core/async/e;->b:Lcom/google/android/youtube/core/async/a;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/youtube/core/async/e;)Lcom/google/android/youtube/core/async/ae;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/core/async/e;->a:Lcom/google/android/youtube/core/async/ae;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/youtube/core/async/e;->a:Lcom/google/android/youtube/core/async/ae;

    new-instance v1, Lcom/google/android/youtube/core/async/f;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/youtube/core/async/f;-><init>(Lcom/google/android/youtube/core/async/e;Lcom/google/android/youtube/core/async/h;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Lcom/google/android/youtube/core/async/ae;->a(Ljava/lang/Object;Lcom/google/android/youtube/core/async/h;)V

    .line 113
    return-void
.end method
