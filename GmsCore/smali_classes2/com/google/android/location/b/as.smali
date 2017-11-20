.class final Lcom/google/android/location/b/as;
.super Lcom/google/android/location/b/at;
.source "SourceFile"


# direct methods
.method constructor <init>(Lcom/google/g/a/b/b/c;Lcom/google/g/a/b/b/c;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 207
    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/b/at;-><init>(ILcom/google/g/a/b/b/c;Lcom/google/g/a/b/b/c;III)V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/google/g/a/b/b/a;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 207
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p3}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    return-void
.end method

.method protected final synthetic b(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
