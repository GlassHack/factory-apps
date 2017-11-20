.class final Lcom/google/android/location/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/b/l;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/g/a/b/b/a;)Z
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/google/g/a/b/b/a;->c()Lcom/google/g/a/b/b/c;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/google/android/location/n/a;->bn:Lcom/google/g/a/b/b/c;

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Lcom/google/android/location/f/aw;)Lcom/google/g/a/b/b/a;
    .locals 4

    .prologue
    .line 69
    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/google/g/a/b/b/a;

    sget-object v0, Lcom/google/android/location/n/a;->bn:Lcom/google/g/a/b/b/c;

    invoke-direct {v1, v0}, Lcom/google/g/a/b/b/a;-><init>(Lcom/google/g/a/b/b/c;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, p1}, Lcom/google/g/a/b/b/a;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/a;

    const/4 v2, 0x2

    iget-object v0, p2, Lcom/google/android/location/f/aw;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/location/b/n;

    iget-object v0, v0, Lcom/google/android/location/b/n;->a:Lcom/google/g/a/b/b/a;

    invoke-virtual {v0}, Lcom/google/g/a/b/b/a;->a()Lcom/google/g/a/b/b/a;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/google/g/a/b/b/a;->b(ILcom/google/g/a/b/b/a;)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x3

    iget-wide v2, p2, Lcom/google/android/location/f/aw;->b:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    const/4 v0, 0x4

    iget-wide v2, p2, Lcom/google/android/location/f/aw;->c:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/g/a/b/b/a;->a(IJ)Lcom/google/g/a/b/b/a;

    return-object v1
.end method

.method public final synthetic a(Lcom/google/g/a/b/b/a;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Lcom/google/android/location/b/o;->c(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Z)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/google/g/a/b/b/a;)Lcom/google/android/location/f/aw;
    .locals 6

    .prologue
    .line 93
    invoke-static {p1}, Lcom/google/android/location/b/o;->c(Lcom/google/g/a/b/b/a;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/location/p/h;->a(Z)V

    .line 94
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->f(I)Lcom/google/g/a/b/b/a;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/google/android/location/b/n;

    invoke-direct {v1, v0}, Lcom/google/android/location/b/n;-><init>(Lcom/google/g/a/b/b/a;)V

    .line 96
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v2

    .line 97
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/g/a/b/b/a;->d(I)J

    move-result-wide v4

    .line 98
    new-instance v0, Lcom/google/android/location/f/aw;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/location/f/aw;-><init>(Ljava/lang/Object;J)V

    iput-wide v4, v0, Lcom/google/android/location/f/aw;->c:J

    return-object v0
.end method
