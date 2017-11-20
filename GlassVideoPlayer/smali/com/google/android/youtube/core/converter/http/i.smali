.class final Lcom/google/android/youtube/core/converter/http/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/google/android/youtube/core/converter/http/d;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/i;->a:Lcom/google/android/youtube/core/converter/http/d;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/android/youtube/core/model/Category;Lcom/google/android/youtube/core/model/Category;)I
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/youtube/core/model/Category;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/google/android/youtube/core/model/Category;

    check-cast p2, Lcom/google/android/youtube/core/model/Category;

    invoke-static {p1, p2}, Lcom/google/android/youtube/core/converter/http/i;->a(Lcom/google/android/youtube/core/model/Category;Lcom/google/android/youtube/core/model/Category;)I

    move-result v0

    return v0
.end method
