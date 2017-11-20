.class final Lcom/google/android/d/a/o;
.super Lcom/google/android/d/a/d;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/google/android/d/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/d/a/d;
    .locals 0

    .prologue
    .line 370
    return-object p0
.end method

.method public final a(Lcom/google/android/d/a/d;)Lcom/google/android/d/a/d;
    .locals 1

    .prologue
    .line 362
    invoke-static {p1}, Lcom/google/android/d/a/x;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/d/a/d;

    return-object v0
.end method

.method protected final a(Lcom/google/android/d/a/q;)V
    .locals 0

    .prologue
    .line 368
    return-void
.end method

.method public final b(C)Z
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
